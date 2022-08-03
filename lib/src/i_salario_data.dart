abstract class ISalarioData {
  /// Salário Mínimo vigente.
  double get salarioMinimo;

  // ========== INSS ==========

  /// Teoricamente o menor salário tributável.
  /// Logo, corresponde ao [salarioMinimo].
  double get inssValorMaximoPatamar1;

  double get inssValorMaximoPatamar2;

  double get inssValorMaximoPatamar3;

  /// Teto do INSS, valor máximo levado em conta para tributação.
  double get inssValorMaximoPatamar4;

  /// Menor alíquota INSS
  double get inssPercDescontoPatamar1;

  double get inssPercDescontoPatamar2;

  double get inssPercDescontoPatamar3;

  double get inssPercDescontoPatamar4;

  // ========== IRRF - Imposto de Renda Retido na Fonte =========

  /// Valor (da Base de Cálculo IRRF) até o qual se é isento de IRRF.
  double get irrfValorMaximoIsento;

  /// Valor (da Base de Cálculo IRRF) até o qual se
  /// paga o [irrfPercDescontoPatamar1].
  double get irrfValorMaximoPatamar1;

  /// Valor (da Base de Cálculo IRRF) até o qual se
  /// paga o [irrfPercDescontoPatamar2].
  double get irrfValorMaximoPatamar2;

  /// Valor (da Base de Cálculo IRRF) até o qual se
  /// paga o [irrfPercDescontoPatamar3].
  /// Acima deste valor, paga-se o [irrfPercDescontoPatamar4],
  /// sem limite máximo.
  double get irrfValorMaximoPatamar3;

  double get irrfPercDescontoPatamar1;

  double get irrfPercDescontoPatamar2;

  double get irrfPercDescontoPatamar3;

  /// Alíquota IRRF paga quando a Base de Cálculo do
  /// IRRF ultrapassa [irrfValorMaximoPatamar3].
  double get irrfPercDescontoPatamar4;

  /// Valor, por cada dependente, subtraído do cálculo base do IRRF.
  double get irrfAbatimentoPorDependente;
}
