import 'i_salario_data.dart';

class SalarioDataFromMap implements ISalarioData {
  final double _salarioMinimo;

  // INSS

  final double _inssValorMaximoPatamar1;
  final double _inssValorMaximoPatamar2;
  final double _inssValorMaximoPatamar3;
  final double _inssValorMaximoPatamar4;

  final double _inssPercDescontoPatamar1;
  final double _inssPercDescontoPatamar2;
  final double _inssPercDescontoPatamar3;
  final double _inssPercDescontoPatamar4;

  // IRRF

  final double _irrfValorMaximoIsento;

  final double _irrfValorMaximoPatamar1;
  final double _irrfValorMaximoPatamar2;
  final double _irrfValorMaximoPatamar3;

  final double _irrfPercDescontoPatamar1;
  final double _irrfPercDescontoPatamar2;
  final double _irrfPercDescontoPatamar3;
  final double _irrfPercDescontoPatamar4;

  final double _irrfAbatimentoPorDependente;

  SalarioDataFromMap(Map<String, double> map)
      : _salarioMinimo = map['salarioMinimo']!,
        _inssValorMaximoPatamar1 = map['inssValorMaximoPatamar1']!,
        _inssValorMaximoPatamar2 = map['inssValorMaximoPatamar2']!,
        _inssValorMaximoPatamar3 = map['inssValorMaximoPatamar3']!,
        _inssValorMaximoPatamar4 = map['inssValorMaximoPatamar4']!,
        _inssPercDescontoPatamar1 = map['inssPercDescontoPatamar1']!,
        _inssPercDescontoPatamar2 = map['inssPercDescontoPatamar2']!,
        _inssPercDescontoPatamar3 = map['inssPercDescontoPatamar3']!,
        _inssPercDescontoPatamar4 = map['inssPercDescontoPatamar4']!,
        _irrfValorMaximoIsento = map['irrfValorMaximoIsento']!,
        _irrfValorMaximoPatamar1 = map['irrfValorMaximoPatamar1']!,
        _irrfValorMaximoPatamar2 = map['irrfValorMaximoPatamar2']!,
        _irrfValorMaximoPatamar3 = map['irrfValorMaximoPatamar3']!,
        _irrfPercDescontoPatamar1 = map['irrfPercDescontoPatamar1']!,
        _irrfPercDescontoPatamar2 = map['irrfPercDescontoPatamar2']!,
        _irrfPercDescontoPatamar3 = map['irrfPercDescontoPatamar3']!,
        _irrfPercDescontoPatamar4 = map['irrfPercDescontoPatamar4']!,
        _irrfAbatimentoPorDependente = map['irrfAbatimentoPorDependente']!;

  @override
  double get salarioMinimo => _salarioMinimo;

// INSS

  @override
  double get inssValorMaximoPatamar1 => _inssValorMaximoPatamar1;

  @override
  double get inssValorMaximoPatamar2 => _inssValorMaximoPatamar2;

  @override
  double get inssValorMaximoPatamar3 => _inssValorMaximoPatamar3;

  @override
  double get inssValorMaximoPatamar4 => _inssValorMaximoPatamar4;

  @override
  double get inssPercDescontoPatamar1 => _inssPercDescontoPatamar1;

  @override
  double get inssPercDescontoPatamar2 => _inssPercDescontoPatamar2;

  @override
  double get inssPercDescontoPatamar3 => _inssPercDescontoPatamar3;

  @override
  double get inssPercDescontoPatamar4 => _inssPercDescontoPatamar4;

  // IRRF

  @override
  double get irrfValorMaximoIsento => _irrfValorMaximoIsento;

  @override
  double get irrfValorMaximoPatamar1 => _irrfValorMaximoPatamar1;

  @override
  double get irrfValorMaximoPatamar2 => _irrfValorMaximoPatamar2;

  @override
  double get irrfValorMaximoPatamar3 => _irrfValorMaximoPatamar3;

  @override
  double get irrfPercDescontoPatamar1 => _irrfPercDescontoPatamar1;

  @override
  double get irrfPercDescontoPatamar2 => _irrfPercDescontoPatamar2;

  @override
  double get irrfPercDescontoPatamar3 => _irrfPercDescontoPatamar3;

  @override
  double get irrfPercDescontoPatamar4 => _irrfPercDescontoPatamar4;

  @override
  double get irrfAbatimentoPorDependente => _irrfAbatimentoPorDependente;
}
