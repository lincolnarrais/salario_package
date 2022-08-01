import 'dart:convert';

import 'package:dio/dio.dart';

import 'i_salario_data_request.dart';

class SalarioDataRequestFromGist implements ISalarioDataRequest {
  final _url =
      'https://gist.githubusercontent.com/lincolnarrais/7c92bc525d01fa48ef03e8bc59a0e767/raw/67560bbc6050ac37a3a46dbdd61f180a19baa791/descontos_salario_brasil.json';

  @override
  Future<Map<String, double>> request() async {
    final dio = Dio();
    final response = await dio.get(_url);
    final map = (jsonDecode(response.data) as Map).cast<String, double>();
    return map;
  }
}
