import 'package:characters_viewer/presentation/home_page.dart';
import 'package:flutter/material.dart';


class App extends StatelessWidget {
  final String pageTitle;

  const App({Key? key, required this.pageTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppView(pageTitle: pageTitle);
  }
}

class AppView extends StatelessWidget {
  final String pageTitle;
  const AppView({super.key, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: pageTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(title: pageTitle),
    );
  }
}


