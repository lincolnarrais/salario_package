import 'i_salario_data.dart';

class SalarioData implements ISalarioData {
  @override
  double get salarioMinimo => 1212.0;

  // INSS

  @override
  double get inssValorMaximoPatamar1 => salarioMinimo;

  @override
  double get inssValorMaximoPatamar2 => 2427.35;

  @override
  double get inssValorMaximoPatamar3 => 3641.03;

  @override
  double get inssValorMaximoPatamar4 => 7087.22;

  @override
  double get inssPercDescontoPatamar1 => .075;

  @override
  double get inssPercDescontoPatamar2 => .09;

  @override
  double get inssPercDescontoPatamar3 => .12;

  @override
  double get inssPercDescontoPatamar4 => .14;

  // IRRF

  @override
  double get irrfValorMaximoIsento => 1903.98;

  @override
  double get irrfValorMaximoPatamar1 => 2826.65;

  @override
  double get irrfValorMaximoPatamar2 => 3751.05;

  @override
  double get irrfValorMaximoPatamar3 => 4664.68;

  @override
  double get irrfPercDescontoPatamar1 => .075;

  @override
  double get irrfPercDescontoPatamar2 => .15;

  @override
  double get irrfPercDescontoPatamar3 => .225;

  @override
  double get irrfPercDescontoPatamar4 => .275;

  @override
  double get irrfAbatimentoPorDependente => 189.59;
}
