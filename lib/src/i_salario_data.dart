abstract class ISalarioData {
  /// Salário Mínimo vigente.
  double get salarioMinimo;

  // INSS

  double get inssValorMaximoPatamar1;
  double get inssValorMaximoPatamar2;
  double get inssValorMaximoPatamar3;
  double get inssValorMaximoPatamar4;

  double get inssPercDescontoPatamar1;
  double get inssPercDescontoPatamar2;
  double get inssPercDescontoPatamar3;
  double get inssPercDescontoPatamar4;

  // IRRF

  double get irrfValorMaximoIsento;

  double get irrfValorMaximoPatamar1;
  double get irrfValorMaximoPatamar2;
  double get irrfValorMaximoPatamar3;

  double get irrfPercDescontoPatamar1;
  double get irrfPercDescontoPatamar2;
  double get irrfPercDescontoPatamar3;
  double get irrfPercDescontoPatamar4;

  double get irrfAbatimentoPorDependente;
}
