import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app.dart';

void main() async {
  await dotenv.load(
      fileName: '${const String.fromEnvironment('DEPLOY_ENV')}.env');
  String apiURL = dotenv.env['API_URL'] ?? '';
  String pageTitle = dotenv.env['HOME_PAGE'] ?? '';
  debugPrint('main(): apiURL = $apiURL');
  debugPrint('main(): pageTitle = $pageTitle');
  runApp(App(pageTitle: 'Characters Viewer'));
}

