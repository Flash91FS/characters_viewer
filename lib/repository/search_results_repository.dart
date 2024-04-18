import 'package:characters_viewer/api_client.dart';
import 'package:characters_viewer/repository/i_search_repository.dart';
import 'package:characters_viewer/models/request_failure.dart';
import 'package:characters_viewer/models/result.dart';
import 'package:characters_viewer/models/related_topics.dart';

class SearchResultsRepository implements ISearchResultsRepository {
  final ApiClient _apiClient;

  SearchResultsRepository(this._apiClient);

  @override
  Future<Result<List<RelatedTopics>>> getSearchResults() async {
    final response = await _apiClient.getResults();
    if (response.isSuccessful) {
      List<RelatedTopics> charsList = [];
      if (response.data != null && response.data!.relatedTopics != null) {
        charsList = response.data!.relatedTopics!;
      }
      return Result.success(data: charsList);
    } else {
      return Result.failure(
          e: RequestFailure(
              statusCode: response.statusCode, message: response.message));
    }
  }
}
