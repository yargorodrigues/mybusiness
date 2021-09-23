import 'dart:convert';
import 'package:http/http.dart';
import 'package:my_bussiness/http/webclient_conection.dart';
import 'package:my_bussiness/models/client.dart';

class RegistrationWebClient {
  Future<List<Cliente>> findAll() async {
    final Response response = await client.get(baseUrl);
    final List<dynamic> decodedJson = jsonDecode(response.body);
    return decodedJson.map((dynamic json) => Cliente.fromJson(json)).toList();
  }

  Future<Cliente> save(Cliente cliente) async {
    final String clientJson = jsonEncode(cliente.toJson());
    await Future.delayed(Duration(seconds: 2));

    final Response response = await client.post(baseUrl,
        headers: {
          'Content-type': 'application/json',
        },
        body: clientJson);
    if (response.statusCode == 200) {
      return Cliente.fromJson(jsonDecode(response.body));
    }
    throw HttpException(_getMessage(response.statusCode));
  }

  String? _getMessage(int statusCode) {
    if (_statusCodeResponses.containsKey(statusCode)) {
      return _statusCodeResponses[statusCode];
    }
    return 'Erro desconhecido';
  }
  static final Map<int, String> _statusCodeResponses = {
    400: 'there was an error submitting transaction',
    401: 'Senha incorreta',
    409: 'Cliente já existente'
  };
}

class HttpException implements Exception {
  final String? message;

  HttpException(this.message);
}
