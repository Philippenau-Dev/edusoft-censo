import 'package:censo/app/core/rest_client/rest_client_response.dart';

abstract class RestClient {
  Future<RestClientResponse<T>> get<T>();
}
