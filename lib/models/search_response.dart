import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'related_topics.dart';

part 'search_response.freezed.dart';

part 'search_response.g.dart';

@freezed
class SearchResponse with _$SearchResponse {

  const factory SearchResponse({
    @JsonKey(name: 'Abstract') String? abstract,
    @JsonKey(name: 'AbstractSource') String? abstractSource,
    @JsonKey(name: 'AbstractText') String? abstractText,
    @JsonKey(name: 'AbstractURL') String? abstractURL,
    @JsonKey(name: 'Answer') String? answer,
    @JsonKey(name: 'AnswerType') String? answerType,
    @JsonKey(name: 'Definition') String? definition,
    @JsonKey(name: 'DefinitionSource') String? definitionSource,
    @JsonKey(name: 'DefinitionURL') String? definitionURL,
    @JsonKey(name: 'Entity') String? entity,
    @JsonKey(name: 'Heading') String? heading,
    @JsonKey(name: 'Image') String? image,
    @JsonKey(name: 'ImageHeight') int? imageHeight,
    @JsonKey(name: 'ImageIsLogo') int? imageIsLogo,
    @JsonKey(name: 'ImageWidth') int? imageWidth,
    @JsonKey(name: 'Infobox') String? infobox,
    @JsonKey(name: 'Redirect') String? redirect,
    @JsonKey(name: 'RelatedTopics') List<RelatedTopics>? relatedTopics,
    @JsonKey(name: 'Results') List? results,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'meta') Map? meta,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
