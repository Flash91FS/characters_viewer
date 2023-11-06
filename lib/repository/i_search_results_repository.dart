import 'package:characters_viewer/models/result.dart';
import 'package:characters_viewer/models/related_topics.dart';

abstract class ISearchResultsRepository {
  Future<Result<List<RelatedTopics>>> getSearchResults();
}