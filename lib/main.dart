import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'api_client.dart';
import 'app.dart';

void main() async {
  await dotenv.load(
      fileName: '${const String.fromEnvironment('DEPLOY_ENV')}.env');
  String apiURL = dotenv.env['API_URL'] ?? '';
  String pageTitle = dotenv.env['HOME_PAGE'] ?? '';
  final apiClient = ApiClient(apiURL);
  runApp(App(apiClient: apiClient, pageTitle: pageTitle));
}

