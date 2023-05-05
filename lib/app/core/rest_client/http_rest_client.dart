import 'dart:convert';

import 'package:censo/app/core/constants/network_address.dart';
import 'package:censo/app/core/rest_client/rest_client.dart';
import 'package:censo/app/core/rest_client/rest_client_response.dart';
import 'package:http/http.dart';

class HttpRestClient implements RestClient {
  HttpRestClient({
    required Client http,
  }) : _http = http;
  final Client _http;

  @override
  Future<RestClientResponse<T>> get<T>() async {
    try {
      final response = await _http.get(
        Uri.parse(
          NetworkAddress.baseUrl,
        ),
      );
      if (response.statusCode == 200) {
        return RestClientResponse<T>(
          data: jsonDecode(response.body),
          statusCode: response.statusCode,
        );
      }

      throw 'Erro ao buscar dados do servidor';
    } catch (e) {
      rethrow;
    }
  }
}
