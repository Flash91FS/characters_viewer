import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:characters_viewer/models/httpresponse.dart';
import 'package:characters_viewer/models/search_response.dart';

class ApiClient {
  final String apiURL;

  ApiClient(this.apiURL);

  Future<HTTPResponse<SearchResponse>> getResults() async {
    try {
      var response = await get(Uri.parse(apiURL));
      var responseBody = response.body;

      final searchResponse = SearchResponse.fromJson(jsonDecode(responseBody));
      return HTTPResponse<SearchResponse>(
        isSuccessful: true,
        statusCode: response.statusCode,
        data: searchResponse,
        message: 'Request Successful',
      );
    } on SocketException {
      return HTTPResponse<SearchResponse>(
        isSuccessful: false,
        message:
            'Unable to reach server. PLease check your internet and try again',
      );
    } on FormatException {
      return HTTPResponse<SearchResponse>(
        isSuccessful: false,
        message: 'FormatException due to invalid data received from server',
      );
    } catch (e) {
      return HTTPResponse<SearchResponse>(
        isSuccessful: false,
        message: 'Request failed with error:\n ${e.toString()}',
      );
    }
  }
}
