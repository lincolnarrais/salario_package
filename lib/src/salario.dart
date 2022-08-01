import 'dart:math' as math;

import 'package:intl/intl.dart';

import 'i_salario_data.dart';

class Salario {
  final double salarioBruto;
  final int qtdeDependentes;
  final double descontoPensaoAlimenticia;
  final ISalarioData salarioData;

  Salario({
    required this.salarioBruto,
    this.qtdeDependentes = 0,
    this.descontoPensaoAlimenticia = 0,
    required this.salarioData,
  });

  double get _descontoInss {
    final d1 = salarioData.inssPercDescontoPatamar1;
    final d2 = salarioData.inssPercDescontoPatamar2;
    final d3 = salarioData.inssPercDescontoPatamar3;
    final d4 = salarioData.inssPercDescontoPatamar4;

    final v1 = salarioData.inssValorMaximoPatamar1;
    final v2 = salarioData.inssValorMaximoPatamar2;
    final v3 = salarioData.inssValorMaximoPatamar3;
    final v4 = salarioData.inssValorMaximoPatamar4;

    final descontoMaximoPatamar1 = v1 * d1;
    final descontoMaximoPatamar2 = (v2 - v1) * d2 + descontoMaximoPatamar1;
    final descontoMaximoPatamar3 = (v3 - v2) * d3 + descontoMaximoPatamar2;
    final descontoMaximoPatamar4 = (v4 - v3) * d4 + descontoMaximoPatamar3;

    var desconto = 0.0;
    var baseDeCalculo = salarioBruto;

    if (baseDeCalculo > v4) {
      desconto = descontoMaximoPatamar4;
    } else if (baseDeCalculo > v3) {
      desconto = descontoMaximoPatamar3 + (baseDeCalculo - v3) * d4;
    } else if (baseDeCalculo > v2) {
      desconto = descontoMaximoPatamar2 + (baseDeCalculo - v2) * d3;
    } else if (baseDeCalculo > v1) {
      desconto = descontoMaximoPatamar1 + (baseDeCalculo - v1) * d2;
      // Teoricamente, o salário não pode ser inferior a um salário mínimo.
    } else {
      desconto = descontoMaximoPatamar1;
    }

    return desconto;
  }

  double get _descontoIrrf {
    final isento = salarioData.irrfValorMaximoIsento;

    final v1 = salarioData.irrfValorMaximoPatamar1;
    final v2 = salarioData.irrfValorMaximoPatamar2;
    final v3 = salarioData.irrfValorMaximoPatamar3;

    final d1 = salarioData.irrfPercDescontoPatamar1;
    final d2 = salarioData.irrfPercDescontoPatamar2;
    final d3 = salarioData.irrfPercDescontoPatamar3;
    final d4 = salarioData.irrfPercDescontoPatamar4;

    final abatimentoPorDependente = salarioData.irrfAbatimentoPorDependente;

    final descontoMaximoPatamar1 = (v1 - isento) * d1;
    final descontoMaximoPatamar2 = (v2 - v1) * d2 + descontoMaximoPatamar1;
    final descontoMaximoPatamar3 = (v3 - v2) * d3 + descontoMaximoPatamar2;

    final baseDeCalculo = salarioBruto -
        _descontoInss -
        descontoPensaoAlimenticia -
        qtdeDependentes * abatimentoPorDependente;

    if (baseDeCalculo <= isento) {
      return 0.0;
    }

    var desconto = 0.0;
    var salario = baseDeCalculo;

    if (salario > v3) {
      desconto = descontoMaximoPatamar3 + (salario - v3) * d4;
    } else if (salario > v2) {
      desconto = descontoMaximoPatamar2 + (salario - v2) * d3;
    } else if (salario > v1) {
      desconto = descontoMaximoPatamar1 + (salario - v1) * d2;
    } else {
      desconto = salario * d1;
    }

    return desconto;
  }

  double get descontoInss => _descontoInss.toPrecision(2);
  double get descontoIrrf => _descontoIrrf.toPrecision(2);
  double get _descontoTotal => (_descontoInss + _descontoIrrf);
  double get descontoTotal => _descontoTotal.toPrecision(2);
  double get salarioLiquido => (salarioBruto - _descontoTotal).toPrecision(2);
  double get percDescontoInss => (_descontoInss / salarioBruto).toPrecision(4);
  double get percDescontoIrrf => (_descontoIrrf / salarioBruto).toPrecision(4);
  double get percDescontoTotal =>
      (_descontoTotal / salarioBruto).toPrecision(4);

  @override
  String toString() {
    final formatCurrency = NumberFormat.simpleCurrency(
      decimalDigits: 2,
      locale: 'pt_BR',
    );

    final formatPercent = NumberFormat.decimalPercentPattern(
      decimalDigits: 2,
      locale: 'pt_BR',
    );

    final bruto = formatCurrency.format(salarioBruto);
    final inss = formatCurrency.format(descontoInss);
    final irrf = formatCurrency.format(descontoIrrf);
    final total = formatCurrency.format(descontoTotal);
    final liquido = formatCurrency.format(salarioLiquido);

    final percInss = formatPercent.format(percDescontoInss);
    final percIrrf = formatPercent.format(percDescontoIrrf);
    final percTotal = formatPercent.format(percDescontoTotal);

    return 'Salário bruto: $bruto'
        '\nDesconto INSS: $inss ($percInss)'
        '\nDesconto IRRF: $irrf ($percIrrf)'
        '\nDesconto total: $total ($percTotal)'
        '\nSalário líquido: $liquido';
  }
}

extension Precision on double {
  /// Arredonda o valor para mostrar no máximo [decimalPlaces] casas decimais.
  double toPrecision(int decimalPlaces) {
    num mod = math.pow(10, decimalPlaces);
    return (this * mod).roundToDouble() / mod;
  }
}
