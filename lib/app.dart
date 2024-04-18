import 'package:characters_viewer/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:characters_viewer/api_client.dart';
import 'package:characters_viewer/repository/i_search_repository.dart';
import 'package:characters_viewer/repository/search_results_repository.dart';
import 'package:characters_viewer/bloc/search/search_cubit.dart';

class App extends StatelessWidget {
  final ApiClient apiClient;
  final String pageTitle;

  const App({Key? key, required this.apiClient, required this.pageTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<ISearchResultsRepository>(
              create: (context) => (SearchResultsRepository(apiClient))),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) => SearchCubit(
                    searchResultsRepository:
                        RepositoryProvider.of<ISearchResultsRepository>(
                            context)))
          ],
          child: AppView(pageTitle: pageTitle),
        ));
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


