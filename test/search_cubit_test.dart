import 'package:bloc_test/bloc_test.dart';
import 'package:characters_viewer/models/related_topics.dart';
import 'package:characters_viewer/models/result.dart';
import 'package:characters_viewer/repository/search_results_repository.dart';
import 'package:characters_viewer/models/request_failure.dart';
import 'package:characters_viewer/bloc/search/search_cubit.dart';
import 'package:characters_viewer/bloc/search/search_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSearchResultsRepository extends Mock
    implements SearchResultsRepository {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Search Cubit', () {
    late SearchResultsRepository searchResultsRepository;
    late SearchCubit searchCubit;

    final allItemsList = [
      const RelatedTopics(
        text: 'Homer - Homer Simpson is my fav character',
      ),
      const RelatedTopics(
        text: 'Bart - Bart Simpson is awesome',
      )
    ];
    final filteredListHomer = [
      const RelatedTopics(
        text: 'Homer - Homer Simpson is my fav character',
      )
    ];
    final filteredlistBart = [
      const RelatedTopics(
        text: 'Bart - Bart Simpson is awesome',
      )
    ];
    final filteredListAll = allItemsList;

    setUp(() async {
      searchResultsRepository = MockSearchResultsRepository();
      searchCubit =
          SearchCubit(searchResultsRepository: searchResultsRepository);
    });

    test('check initial state', () async {
      expect(
          SearchCubit(searchResultsRepository: searchResultsRepository).state,
          const SearchState.loading());
    });

    blocTest<SearchCubit, SearchState>(
        'check State after failed search response',
        setUp: () => when(() => searchResultsRepository.getSearchResults())
            .thenAnswer((_) async => Result.failure(
                e: RequestFailure(
                    statusCode: 404, message: 'Some error message'))),
        build: () => searchCubit,
        act: (searchCubit) => searchCubit.loadResults(),
        expect: () => [
              const SearchState.failedToLoad(),
            ]);

    blocTest<SearchCubit, SearchState>(
        'check State after successful search response',
        setUp: () => when(() => searchResultsRepository.getSearchResults())
            .thenAnswer((_) async => Result.success(data: allItemsList)),
        build: () => searchCubit,
        act: (searchCubit) => searchCubit.loadResults(),
        expect: () => [
              SearchState.loaded(
                  allItems: allItemsList,
                  filteredItems: filteredListAll,
                  selectedItem: allItemsList[0])
            ]);

    blocTest<SearchCubit, SearchState>(
        'check State after filtering with "bar" ',
        setUp: () {
          when(() => searchResultsRepository.getSearchResults())
              .thenAnswer((_) async => Result.success(data: allItemsList));
          searchCubit.emit(SearchState.loaded(
              allItems: allItemsList,
              filteredItems: filteredListAll,
              selectedItem: allItemsList[0]));
        },
        build: () => searchCubit,
        act: (searchCubit) => searchCubit.filterBy(term: 'bar'),
        expect: () => [
              SearchState.loaded(
                  allItems: allItemsList,
                  filteredItems: filteredlistBart,
                  selectedItem: allItemsList[0])
            ]);

    blocTest<SearchCubit, SearchState>(
        'check State after filtering with "hom" ',
        setUp: () {
          when(() => searchResultsRepository.getSearchResults())
              .thenAnswer((_) async => Result.success(data: allItemsList));
          searchCubit.emit(SearchState.loaded(
              allItems: allItemsList,
              filteredItems: filteredListAll,
              selectedItem: allItemsList[0]));
        },
        build: () => searchCubit,
        act: (searchCubit) => searchCubit.filterBy(term: 'hom'),
        expect: () => [
              SearchState.loaded(
                  allItems: allItemsList,
                  filteredItems: filteredListHomer,
                  selectedItem: allItemsList[0])
            ]);
  });
}
