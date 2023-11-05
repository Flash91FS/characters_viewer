class HTTPResponse<T> {
  bool isSuccessful;
  T? data;
  int statusCode;
  String message;

  HTTPResponse(
      {required this.isSuccessful,
      this.data,
      this.statusCode = 400,
      required this.message});
}
