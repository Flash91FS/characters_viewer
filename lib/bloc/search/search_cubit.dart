import 'package:characters_viewer/bloc/search/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/related_topics.dart';
import '../../models/result.dart';
import '../../repository/i_search_repository.dart';

class SearchCubit extends Cubit<SearchState> {
  final ISearchResultsRepository searchResultsRepository;

  SearchCubit({required this.searchResultsRepository})
      : super(const SearchState.loading());

  Future<void> loadResults() async {
    try {
      Result<List<RelatedTopics>> results =
          await searchResultsRepository.getSearchResults();
      results.when(success: (List<RelatedTopics> items) {
        RelatedTopics? selectedItem = items.isNotEmpty ? items[0] : null;
        emit(SearchState.loaded(
            allItems: items, filteredItems: items, selectedItem: selectedItem));
      }, failure: (_) {
        emit(const SearchState.failedToLoad());
      });
    } on Error {
      emit(const SearchState.failedToLoad());
    } on Exception {
      emit(const SearchState.failedToLoad());
    }
  }

  void setSelectedItem(RelatedTopics item) {
    emit((state as Data).copyWith(selectedItem: item));
  }

  void filterBy({required String term}) {
    if (term.isNotEmpty) {
      final filteredList = (state as Data).allItems.where((item) {
        return item.getName().toLowerCase().contains(term.toLowerCase());
      }).toList();
      emit((state as Data).copyWith(filteredItems: filteredList));
    } else {
      emit((state as Data).copyWith(filteredItems: (state as Data).allItems));
    }
  }
}
