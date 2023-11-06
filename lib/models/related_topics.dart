import 'package:characters_viewer/models/character_icon.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'related_topics.freezed.dart';

part 'related_topics.g.dart';

@freezed
class RelatedTopics with _$RelatedTopics {
  const RelatedTopics._();

  const factory RelatedTopics({
    @JsonKey(name: 'FirstURL') String? firstURL,
    @JsonKey(name: 'Icon') CharacterIcon? icon,
    @JsonKey(name: 'Result') String? result,
    @JsonKey(name: 'Text')  String? text,
  }) = _RelatedTopics;

  factory RelatedTopics.fromJson(Map<String, dynamic> json) =>
      _$RelatedTopicsFromJson(json);

  String getName() {
    if (text != null && text!.contains('-')) {
      return text!.substring(0, text!.indexOf('-'));
    } else {
      return text ?? '';
    }
  }

  String getDescription() {
    if (text != null) {
      return text!.contains('-')
          ? text!.substring(text!.indexOf('-') + 2, text!.length)
          : text!;
    } else {
      return '';
    }
  }
}