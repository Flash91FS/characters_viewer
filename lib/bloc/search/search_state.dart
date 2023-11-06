import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:characters_viewer/models/related_topics.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loaded(
      {required List<RelatedTopics> allItems, required List<RelatedTopics> filteredItems, RelatedTopics? selectedItem}) = Data;

  const factory SearchState.loading() = Loading;

  const factory SearchState.failedToLoad() = FailedToLoad;
}
