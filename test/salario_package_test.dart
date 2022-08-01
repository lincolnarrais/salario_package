import 'package:salario_package/salario_package.dart';
import 'package:test/test.dart';

Future<void> main() async {
  group('[sync test]', () {
    final salarioData = SalarioData();

    group('Salário mínimo', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: salarioData.salarioMinimo,
      );

      test('calcular salário líquido - R\$ 1.121,10', () {
        expect(salario.salarioLiquido, 1121.1);
      });

      test('calcular desconto INSS - R\$ 90,90', () {
        expect(salario.descontoInss, 90.9);
      });

      test('calcular porcentagem de desconto INSS - 7,5%', () {
        expect(salario.percDescontoInss, .075);
      });

      test('calcular desconto IRRF - R\$ 0,00', () {
        expect(salario.descontoIrrf, 0);
      });

      test('calcular porcentagem de desconto IRRF - 0%', () {
        expect(salario.percDescontoIrrf, 0);
      });

      test('calcular desconto total - R\$ 90,90', () {
        expect(salario.descontoTotal, 90.9);
      });

      test('calcular porcentagem de desconto total - 7,50%', () {
        expect(salario.percDescontoTotal, .075);
      });
    });

    group('R\$ 2.000,00', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 2000.00,
      );

      test('calcular salário líquido - R\$ 1.838,18', () {
        expect(salario.salarioLiquido, 1838.18);
      });

      test('calcular desconto INSS - R\$ 161,82', () {
        expect(salario.descontoInss, 161.82);
      });

      test('calcular porcentagem de desconto INSS - 8,09%', () {
        expect(salario.percDescontoInss, .0809);
      });

      test('calcular desconto IRRF - R\$ 0,00', () {
        expect(salario.descontoIrrf, 0);
      });

      test('calcular porcentagem de desconto IRRF - 0%', () {
        expect(salario.percDescontoIrrf, 0);
      });

      test('calcular desconto total - R\$ 161,82', () {
        expect(salario.descontoTotal, 161.82);
      });

      test('calcular porcentagem de desconto total - 8,09%', () {
        expect(salario.percDescontoTotal, .0809);
      });
    });

    group('R\$ 3.636,00', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 3636.0,
      );

      test('calcular salário líquido - R\$ 3151,88', () {
        expect(salario.salarioLiquido, 3151.88);
      });

      test('calcular desconto INSS - R\$ 345,32', () {
        expect(salario.descontoInss, 345.32);
      });

      test('calcular porcentagem de desconto INSS - 9,50%', () {
        expect(salario.percDescontoInss, .095);
      });

      test('calcular desconto IRRF - R\$ 138,80', () {
        expect(salario.descontoIrrf, 138.8);
      });

      test('calcular porcentagem de desconto IRRF - 3,82%', () {
        expect(salario.percDescontoIrrf, .0382);
      });

      test('calcular desconto total - R\$ 484,12', () {
        expect(salario.descontoTotal, 484.12);
      });

      test('calcular porcentagem de desconto total - 13,31%', () {
        expect(salario.percDescontoTotal, .1331);
      });
    });

    group('R\$ 4.120,80', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 4120.8,
      );

      test('calcular salário líquido - R\$ 3.506,35', () {
        expect(salario.salarioLiquido, 3506.35);
      });

      test('calcular desconto INSS - R\$ 413,09', () {
        expect(salario.descontoInss, 413.09);
      });

      test('calcular porcentagem de desconto INSS - 10,02%', () {
        expect(salario.percDescontoInss, .1002);
      });

      test('calcular desconto IRRF - R\$ 201,36', () {
        expect(salario.descontoIrrf, 201.36);
      });

      test('calcular porcentagem de desconto IRRF - 4,89%', () {
        expect(salario.percDescontoIrrf, .0489);
      });

      test('calcular desconto total - R\$ 614,45', () {
        expect(salario.descontoTotal, 614.45);
      });

      test('calcular porcentagem de desconto total - 14,91%', () {
        expect(salario.percDescontoTotal, .1491);
      });
    });

    group('R\$ 4.500,00', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 4500,
      );

      test('calcular salário líquido - R\$ 3.762,34', () {
        expect(salario.salarioLiquido, 3762.34);
      });

      test('calcular desconto INSS - R\$ 466,18', () {
        expect(salario.descontoInss, 466.18);
      });

      test('calcular porcentagem de desconto INSS - 10,36%', () {
        expect(salario.percDescontoInss, .1036);
      });

      test('calcular desconto IRRF - R\$ 271,48', () {
        expect(salario.descontoIrrf, 271.48);
      });

      test('calcular porcentagem de desconto IRRF - 6,03%', () {
        expect(salario.percDescontoIrrf, .0603);
      });

      test('calcular desconto total - R\$ 737,66', () {
        expect(salario.descontoTotal, 737.66);
      });

      test('calcular porcentagem de desconto total - 16,39%', () {
        expect(salario.percDescontoTotal, .1639);
      });
    });

    group('R\$ 4.664,68', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 4664.68,
      );

      test('calcular salário líquido - R\$ 3.872,10', () {
        expect(salario.salarioLiquido, 3872.10);
      });

      test('calcular desconto INSS - R\$ 489,23', () {
        expect(salario.descontoInss, 489.23);
      });

      test('calcular porcentagem de desconto INSS - 10,49%', () {
        expect(salario.percDescontoInss, .1049);
      });

      test('calcular desconto IRRF - R\$ 303,35', () {
        expect(salario.descontoIrrf, 303.35);
      });

      test('calcular porcentagem de desconto IRRF - 6,50%', () {
        expect(salario.percDescontoIrrf, .065);
      });

      test('calcular desconto total - R\$ 792,58', () {
        expect(salario.descontoTotal, 792.58);
      });

      test('calcular porcentagem de desconto total - 16,99%', () {
        expect(salario.percDescontoTotal, .1699);
      });
    });

    group('R\$ 7.087,22', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 7087.22,
      );

      test('calcular salário líquido - R\$ 5.407,01', () {
        expect(salario.salarioLiquido, 5407.01);
      });

      test('calcular desconto INSS - R\$ 828,39', () {
        expect(salario.descontoInss, 828.39);
      });

      test('calcular porcentagem de desconto INSS - 12,69%', () {
        expect(salario.percDescontoInss, .1169);
      });

      test('calcular desconto IRRF - R\$ 851,82', () {
        expect(salario.descontoIrrf, 851.82);
      });

      test('calcular porcentagem de desconto IRRF - 12,02%', () {
        expect(salario.percDescontoIrrf, .1202);
      });

      test('calcular desconto total - R\$ 1.680,21', () {
        expect(salario.descontoTotal, 1680.21);
      });

      test('calcular porcentagem de desconto total - 23,71%', () {
        expect(salario.percDescontoTotal, .2371);
      });
    });

    group('R\$ 16.500,00', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 16500,
      );

      test('calcular salário líquido - R\$ 12.231,28', () {
        expect(salario.salarioLiquido, 12231.28);
      });

      test('calcular desconto INSS - R\$ 828,39', () {
        expect(salario.descontoInss, 828.39);
      });

      test('calcular porcentagem de desconto INSS - 5,02%', () {
        expect(salario.percDescontoInss, .0502);
      });

      test('calcular desconto IRRF - R\$ 3.440,33', () {
        expect(salario.descontoIrrf, 3440.33);
      });

      test('calcular porcentagem de desconto IRRF - 20,85%', () {
        expect(salario.percDescontoIrrf, .2085);
      });

      test('calcular desconto total - R\$ 4.268,72', () {
        expect(salario.descontoTotal, 4268.72);
      });

      test('calcular porcentagem de desconto total - 25,87%', () {
        expect(salario.percDescontoTotal, .2587);
      });
    });
  });

  final map = await SalarioDataRequestFromGist().request();

  group('[async test]', () {
    final salarioData = SalarioDataFromMap(map);

    group('Salário mínimo', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: salarioData.salarioMinimo,
      );

      test('calcular salário líquido - R\$ 1.121,10', () {
        expect(salario.salarioLiquido, 1121.1);
      });

      test('calcular desconto INSS - R\$ 90,90', () {
        expect(salario.descontoInss, 90.9);
      });

      test('calcular porcentagem de desconto INSS - 7,5%', () {
        expect(salario.percDescontoInss, .075);
      });

      test('calcular desconto IRRF - R\$ 0,00', () {
        expect(salario.descontoIrrf, 0);
      });

      test('calcular porcentagem de desconto IRRF - 0%', () {
        expect(salario.percDescontoIrrf, 0);
      });

      test('calcular desconto total - R\$ 90,90', () {
        expect(salario.descontoTotal, 90.9);
      });

      test('calcular porcentagem de desconto total - 7,50%', () {
        expect(salario.percDescontoTotal, .075);
      });
    });

    group('R\$ 2.000,00', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 2000.00,
      );

      test('calcular salário líquido - R\$ 1.838,18', () {
        expect(salario.salarioLiquido, 1838.18);
      });

      test('calcular desconto INSS - R\$ 161,82', () {
        expect(salario.descontoInss, 161.82);
      });

      test('calcular porcentagem de desconto INSS - 8,09%', () {
        expect(salario.percDescontoInss, .0809);
      });

      test('calcular desconto IRRF - R\$ 0,00', () {
        expect(salario.descontoIrrf, 0);
      });

      test('calcular porcentagem de desconto IRRF - 0%', () {
        expect(salario.percDescontoIrrf, 0);
      });

      test('calcular desconto total - R\$ 161,82', () {
        expect(salario.descontoTotal, 161.82);
      });

      test('calcular porcentagem de desconto total - 8,09%', () {
        expect(salario.percDescontoTotal, .0809);
      });
    });

    group('R\$ 3.636,00', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 3636.0,
      );

      test('calcular salário líquido - R\$ 3151,88', () {
        expect(salario.salarioLiquido, 3151.88);
      });

      test('calcular desconto INSS - R\$ 345,32', () {
        expect(salario.descontoInss, 345.32);
      });

      test('calcular porcentagem de desconto INSS - 9,50%', () {
        expect(salario.percDescontoInss, .095);
      });

      test('calcular desconto IRRF - R\$ 138,80', () {
        expect(salario.descontoIrrf, 138.8);
      });

      test('calcular porcentagem de desconto IRRF - 3,82%', () {
        expect(salario.percDescontoIrrf, .0382);
      });

      test('calcular desconto total - R\$ 484,12', () {
        expect(salario.descontoTotal, 484.12);
      });

      test('calcular porcentagem de desconto total - 13,31%', () {
        expect(salario.percDescontoTotal, .1331);
      });
    });

    group('R\$ 4.120,80', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 4120.8,
      );

      test('calcular salário líquido - R\$ 3.506,35', () {
        expect(salario.salarioLiquido, 3506.35);
      });

      test('calcular desconto INSS - R\$ 413,09', () {
        expect(salario.descontoInss, 413.09);
      });

      test('calcular porcentagem de desconto INSS - 10,02%', () {
        expect(salario.percDescontoInss, .1002);
      });

      test('calcular desconto IRRF - R\$ 201,36', () {
        expect(salario.descontoIrrf, 201.36);
      });

      test('calcular porcentagem de desconto IRRF - 4,89%', () {
        expect(salario.percDescontoIrrf, .0489);
      });

      test('calcular desconto total - R\$ 614,45', () {
        expect(salario.descontoTotal, 614.45);
      });

      test('calcular porcentagem de desconto total - 14,91%', () {
        expect(salario.percDescontoTotal, .1491);
      });
    });

    group('R\$ 4.500,00', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 4500,
      );

      test('calcular salário líquido - R\$ 3.762,34', () {
        expect(salario.salarioLiquido, 3762.34);
      });

      test('calcular desconto INSS - R\$ 466,18', () {
        expect(salario.descontoInss, 466.18);
      });

      test('calcular porcentagem de desconto INSS - 10,36%', () {
        expect(salario.percDescontoInss, .1036);
      });

      test('calcular desconto IRRF - R\$ 271,48', () {
        expect(salario.descontoIrrf, 271.48);
      });

      test('calcular porcentagem de desconto IRRF - 6,03%', () {
        expect(salario.percDescontoIrrf, .0603);
      });

      test('calcular desconto total - R\$ 737,66', () {
        expect(salario.descontoTotal, 737.66);
      });

      test('calcular porcentagem de desconto total - 16,39%', () {
        expect(salario.percDescontoTotal, .1639);
      });
    });

    group('R\$ 4.664,68', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 4664.68,
      );

      test('calcular salário líquido - R\$ 3.872,10', () {
        expect(salario.salarioLiquido, 3872.10);
      });

      test('calcular desconto INSS - R\$ 489,23', () {
        expect(salario.descontoInss, 489.23);
      });

      test('calcular porcentagem de desconto INSS - 10,49%', () {
        expect(salario.percDescontoInss, .1049);
      });

      test('calcular desconto IRRF - R\$ 303,35', () {
        expect(salario.descontoIrrf, 303.35);
      });

      test('calcular porcentagem de desconto IRRF - 6,50%', () {
        expect(salario.percDescontoIrrf, .065);
      });

      test('calcular desconto total - R\$ 792,58', () {
        expect(salario.descontoTotal, 792.58);
      });

      test('calcular porcentagem de desconto total - 16,99%', () {
        expect(salario.percDescontoTotal, .1699);
      });
    });

    group('R\$ 7.087,22', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 7087.22,
      );

      test('calcular salário líquido - R\$ 5.407,01', () {
        expect(salario.salarioLiquido, 5407.01);
      });

      test('calcular desconto INSS - R\$ 828,39', () {
        expect(salario.descontoInss, 828.39);
      });

      test('calcular porcentagem de desconto INSS - 12,69%', () {
        expect(salario.percDescontoInss, .1169);
      });

      test('calcular desconto IRRF - R\$ 851,82', () {
        expect(salario.descontoIrrf, 851.82);
      });

      test('calcular porcentagem de desconto IRRF - 12,02%', () {
        expect(salario.percDescontoIrrf, .1202);
      });

      test('calcular desconto total - R\$ 1.680,21', () {
        expect(salario.descontoTotal, 1680.21);
      });

      test('calcular porcentagem de desconto total - 23,71%', () {
        expect(salario.percDescontoTotal, .2371);
      });
    });

    group('R\$ 16.500,00', () {
      final salario = Salario(
        salarioData: salarioData,
        salarioBruto: 16500,
      );

      test('calcular salário líquido - R\$ 12.231,28', () {
        expect(salario.salarioLiquido, 12231.28);
      });

      test('calcular desconto INSS - R\$ 828,39', () {
        expect(salario.descontoInss, 828.39);
      });

      test('calcular porcentagem de desconto INSS - 5,02%', () {
        expect(salario.percDescontoInss, .0502);
      });

      test('calcular desconto IRRF - R\$ 3.440,33', () {
        expect(salario.descontoIrrf, 3440.33);
      });

      test('calcular porcentagem de desconto IRRF - 20,85%', () {
        expect(salario.percDescontoIrrf, .2085);
      });

      test('calcular desconto total - R\$ 4.268,72', () {
        expect(salario.descontoTotal, 4268.72);
      });

      test('calcular porcentagem de desconto total - 25,87%', () {
        expect(salario.percDescontoTotal, .2587);
      });
    });
  });
}
