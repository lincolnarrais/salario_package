/// Exemplo usando o salário do prefeito de Camocim - CE,
/// que é de R$ 16.500,00.

import 'package:salario_package/salario_package.dart';

void main(List<String> arguments) {
  final salario = Salario(salarioBruto: 16500);
  print(salario);
}
