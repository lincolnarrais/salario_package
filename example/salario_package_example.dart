/// Exemplo usando o salário do prefeito de Camocim - CE,
/// que é de R$ 16.500,00.

import 'package:salario_package/salario_package.dart';

void main(List<String> arguments) {
  final salario = Salario(salarioBruto: 16500);
  print(salario);
}

// Outputs:
//
// Salário bruto: R$ 16.500,00
// Desconto INSS: R$ 828,39 (5,02%)
// Desconto IRRF: R$ 3.440,33 (20,85%)
// Desconto total: R$ 4.268,72 (25,87%)
// Salário líquido: R$ 12.231,28
