import 'dart:convert';

import 'i_salario_data.dart';

class SalarioData implements ISalarioData {
  final double? _salarioMinimo;
  final double? _inssValorMaximoPatamar1;
  final double? _inssValorMaximoPatamar2;
  final double? _inssValorMaximoPatamar3;
  final double? _inssValorMaximoPatamar4;
  final double? _inssPercDescontoPatamar1;
  final double? _inssPercDescontoPatamar2;
  final double? _inssPercDescontoPatamar3;
  final double? _inssPercDescontoPatamar4;
  final double? _irrfValorMaximoIsento;
  final double? _irrfValorMaximoPatamar1;
  final double? _irrfValorMaximoPatamar2;
  final double? _irrfValorMaximoPatamar3;
  final double? _irrfPercDescontoPatamar1;
  final double? _irrfPercDescontoPatamar2;
  final double? _irrfPercDescontoPatamar3;
  final double? _irrfPercDescontoPatamar4;
  final double? _irrfAbatimentoPorDependente;

  SalarioData()
      : _salarioMinimo = null,
        _inssValorMaximoPatamar1 = null,
        _inssValorMaximoPatamar2 = null,
        _inssValorMaximoPatamar3 = null,
        _inssValorMaximoPatamar4 = null,
        _inssPercDescontoPatamar1 = null,
        _inssPercDescontoPatamar2 = null,
        _inssPercDescontoPatamar3 = null,
        _inssPercDescontoPatamar4 = null,
        _irrfValorMaximoIsento = null,
        _irrfValorMaximoPatamar1 = null,
        _irrfValorMaximoPatamar2 = null,
        _irrfValorMaximoPatamar3 = null,
        _irrfPercDescontoPatamar1 = null,
        _irrfPercDescontoPatamar2 = null,
        _irrfPercDescontoPatamar3 = null,
        _irrfPercDescontoPatamar4 = null,
        _irrfAbatimentoPorDependente = null;

  SalarioData.custom({
    double? salarioMinimo,
    double? inssValorMaximoPatamar1,
    double? inssValorMaximoPatamar2,
    double? inssValorMaximoPatamar3,
    double? inssValorMaximoPatamar4,
    double? inssPercDescontoPatamar1,
    double? inssPercDescontoPatamar2,
    double? inssPercDescontoPatamar3,
    double? inssPercDescontoPatamar4,
    double? irrfValorMaximoIsento,
    double? irrfValorMaximoPatamar1,
    double? irrfValorMaximoPatamar2,
    double? irrfValorMaximoPatamar3,
    double? irrfPercDescontoPatamar1,
    double? irrfPercDescontoPatamar2,
    double? irrfPercDescontoPatamar3,
    double? irrfPercDescontoPatamar4,
    double? irrfAbatimentoPorDependente,
  })  : _salarioMinimo = salarioMinimo,
        _inssValorMaximoPatamar1 = inssValorMaximoPatamar1,
        _inssValorMaximoPatamar2 = inssValorMaximoPatamar2,
        _inssValorMaximoPatamar3 = inssValorMaximoPatamar3,
        _inssValorMaximoPatamar4 = inssValorMaximoPatamar4,
        _inssPercDescontoPatamar1 = inssPercDescontoPatamar1,
        _inssPercDescontoPatamar2 = inssPercDescontoPatamar2,
        _inssPercDescontoPatamar3 = inssPercDescontoPatamar3,
        _inssPercDescontoPatamar4 = inssPercDescontoPatamar4,
        _irrfValorMaximoIsento = irrfValorMaximoIsento,
        _irrfValorMaximoPatamar1 = irrfValorMaximoPatamar1,
        _irrfValorMaximoPatamar2 = irrfValorMaximoPatamar2,
        _irrfValorMaximoPatamar3 = irrfValorMaximoPatamar3,
        _irrfPercDescontoPatamar1 = irrfPercDescontoPatamar1,
        _irrfPercDescontoPatamar2 = irrfPercDescontoPatamar2,
        _irrfPercDescontoPatamar3 = irrfPercDescontoPatamar3,
        _irrfPercDescontoPatamar4 = irrfPercDescontoPatamar4,
        _irrfAbatimentoPorDependente = irrfAbatimentoPorDependente;

  factory SalarioData.fromMap(Map<String, double> map) {
    return SalarioData.custom(
      salarioMinimo: map['salarioMinimo']!,
      inssValorMaximoPatamar1: map['inssValorMaximoPatamar1']!,
      inssValorMaximoPatamar2: map['inssValorMaximoPatamar2']!,
      inssValorMaximoPatamar3: map['inssValorMaximoPatamar3']!,
      inssValorMaximoPatamar4: map['inssValorMaximoPatamar4']!,
      inssPercDescontoPatamar1: map['inssPercDescontoPatamar1']!,
      inssPercDescontoPatamar2: map['inssPercDescontoPatamar2']!,
      inssPercDescontoPatamar3: map['inssPercDescontoPatamar3']!,
      inssPercDescontoPatamar4: map['inssPercDescontoPatamar4']!,
      irrfValorMaximoIsento: map['irrfValorMaximoIsento']!,
      irrfValorMaximoPatamar1: map['irrfValorMaximoPatamar1']!,
      irrfValorMaximoPatamar2: map['irrfValorMaximoPatamar2']!,
      irrfValorMaximoPatamar3: map['irrfValorMaximoPatamar3']!,
      irrfPercDescontoPatamar1: map['irrfPercDescontoPatamar1']!,
      irrfPercDescontoPatamar2: map['irrfPercDescontoPatamar2']!,
      irrfPercDescontoPatamar3: map['irrfPercDescontoPatamar3']!,
      irrfPercDescontoPatamar4: map['irrfPercDescontoPatamar4']!,
      irrfAbatimentoPorDependente: map['irrfAbatimentoPorDependente']!,
    );
  }

  factory SalarioData.fromJson(String json) =>
      SalarioData.fromMap(jsonDecode(json).cast<String, double>());

  @override
  double get salarioMinimo => _salarioMinimo ?? 1212.0;

  // INSS

  @override
  double get inssValorMaximoPatamar1 =>
      _inssValorMaximoPatamar1 ?? salarioMinimo;

  @override
  double get inssValorMaximoPatamar2 => _inssValorMaximoPatamar2 ?? 2427.35;

  @override
  double get inssValorMaximoPatamar3 => _inssValorMaximoPatamar3 ?? 3641.03;

  @override
  double get inssValorMaximoPatamar4 => _inssValorMaximoPatamar4 ?? 7087.22;

  @override
  double get inssPercDescontoPatamar1 => _inssPercDescontoPatamar1 ?? .075;

  @override
  double get inssPercDescontoPatamar2 => _inssPercDescontoPatamar2 ?? .09;

  @override
  double get inssPercDescontoPatamar3 => _inssPercDescontoPatamar3 ?? .12;

  @override
  double get inssPercDescontoPatamar4 => _inssPercDescontoPatamar4 ?? .14;

  // IRRF

  @override
  double get irrfValorMaximoIsento => _irrfValorMaximoIsento ?? 1903.98;

  @override
  double get irrfValorMaximoPatamar1 => _irrfValorMaximoPatamar1 ?? 2826.65;

  @override
  double get irrfValorMaximoPatamar2 => _irrfValorMaximoPatamar2 ?? 3751.05;

  @override
  double get irrfValorMaximoPatamar3 => _irrfValorMaximoPatamar3 ?? 4664.68;

  @override
  double get irrfPercDescontoPatamar1 => _irrfPercDescontoPatamar1 ?? .075;

  @override
  double get irrfPercDescontoPatamar2 => _irrfPercDescontoPatamar2 ?? .15;

  @override
  double get irrfPercDescontoPatamar3 => _irrfPercDescontoPatamar3 ?? .225;

  @override
  double get irrfPercDescontoPatamar4 => _irrfPercDescontoPatamar4 ?? .275;

  @override
  double get irrfAbatimentoPorDependente =>
      _irrfAbatimentoPorDependente ?? 189.59;
}
