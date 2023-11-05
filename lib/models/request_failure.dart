class RequestFailure implements Exception {
  final int statusCode;
  final String message;

  RequestFailure({required this.statusCode, required this.message});
}
