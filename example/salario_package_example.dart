import 'package:salario_package/salario_package.dart';

Future<void> main(List<String> arguments) async {
  final map = await SalarioDataRequestFromGist().request();
  final salarioData = SalarioDataFromMap(map);
  final salario = Salario(salarioBruto: 16500, salarioData: salarioData);
  print(salario);
}
