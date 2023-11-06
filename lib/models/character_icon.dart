import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_icon.freezed.dart';

part 'character_icon.g.dart';

@freezed
class CharacterIcon with _$CharacterIcon {

  const factory CharacterIcon({
    @JsonKey(name: 'Height') String? height,
    @JsonKey(name: 'URL') String? uRL,
    @JsonKey(name: 'Width') String? width,
  }) = _CharacterIcon;

  factory CharacterIcon.fromJson(Map<String, dynamic> json) =>
      _$CharacterIconFromJson(json);
}