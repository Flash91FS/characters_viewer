import 'package:bloc_test/bloc_test.dart';
import 'package:characters_viewer/models/related_topics.dart';
import 'package:characters_viewer/models/result.dart';
import 'package:characters_viewer/presentation/character_list.dart';
import 'package:characters_viewer/presentation/details.dart';
import 'package:characters_viewer/presentation/home_page.dart';
import 'package:characters_viewer/presentation/search_box.dart';
import 'package:characters_viewer/repository/search_results_repository.dart';
import 'package:characters_viewer/bloc/search/search_cubit.dart';
import 'package:characters_viewer/bloc/search/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSearchCubit extends MockCubit<SearchState> implements SearchCubit {}

class MockSearchResultsRepository extends Mock
    implements SearchResultsRepository {}

void main() {
  group('All Presentation Views ', () {
    late SearchCubit searchCubit;
    late SearchResultsRepository searchResultsRepository;
    final allItemsList = [
      const RelatedTopics(
        text: 'Homer - Homer Simpson is my fav character',
      ),
      const RelatedTopics(
        text: 'Bart - Bart Simpson is awesome',
      )
    ];

    setUp(() {
      searchCubit = MockSearchCubit();
      searchResultsRepository = MockSearchResultsRepository();

      when(() => searchResultsRepository.getSearchResults())
          .thenAnswer((_) async => Result.success(data: allItemsList));
      when(() => searchCubit.state).thenReturn(SearchState.loaded(
          allItems: allItemsList,
          filteredItems: allItemsList,
          selectedItem: allItemsList[0]));
    });

    testWidgets('Home Page test', (WidgetTester tester) async {
      await tester.pumpWidget(MultiRepositoryProvider(
        providers: [RepositoryProvider.value(value: searchResultsRepository)],
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: SearchCubit(
                searchResultsRepository: searchResultsRepository,
              ),
            )
          ],
          child:
              const MaterialApp(home: Scaffold(body: HomePage(title: ''))),
        ),
      ));

      await tester.pumpAndSettle();

      expect(find.byKey(const Key('character_list')), findsOneWidget);
    });

    testWidgets('CharacterList List test', (WidgetTester tester) async {
      await tester.pumpWidget(MultiRepositoryProvider(
        providers: [RepositoryProvider.value(value: searchResultsRepository)],
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(value: searchCubit),
          ],
          child: MaterialApp(
              home: Scaffold(body: CharacterList(items: allItemsList))),
        ),
      ));

      await tester.pumpAndSettle();

      expect(find.byKey(const Key('character_list_view')), findsOneWidget);
      expect(find.byKey(const Key('list_item_0')), findsOneWidget);
      expect(find.byKey(const Key('list_item_1')), findsOneWidget);
    });

    testWidgets('Details View test', (WidgetTester tester) async {
      await tester.pumpWidget(MultiRepositoryProvider(
        providers: [RepositoryProvider.value(value: searchResultsRepository)],
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(value: searchCubit),
          ],
          child: MaterialApp(home: Scaffold(body: Details(allItemsList[0]))),
        ),
      ));

      await tester.pumpAndSettle();

      expect(
          find.byKey(Key('name_${allItemsList[0].getName()}')), findsOneWidget);
      expect(find.text(allItemsList[0].getDescription()), findsOneWidget);
    });

    testWidgets('SearchBox View test', (WidgetTester tester) async {
      await tester.pumpWidget(MultiRepositoryProvider(
        providers: [RepositoryProvider.value(value: searchResultsRepository)],
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(value: searchCubit),
          ],
          child: MaterialApp(
            home: Scaffold(
              body: SearchBox(),
            ),
          ),
        ),
      ));

      await tester.pumpAndSettle();

      expect(find.byKey(const Key('search_field')), findsOneWidget);


    });
  });
}
