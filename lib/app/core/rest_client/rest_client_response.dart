class RestClientResponse<T> {
  final T data;
  final int? statusCode;
  final String? message;

  RestClientResponse({
    required this.data,
    this.statusCode,
    this.message,
  });
}
