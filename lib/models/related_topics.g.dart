// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_topics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RelatedTopics _$$_RelatedTopicsFromJson(Map<String, dynamic> json) =>
    _$_RelatedTopics(
      firstURL: json['FirstURL'] as String?,
      icon: json['Icon'] == null
          ? null
          : CharacterIcon.fromJson(json['Icon'] as Map<String, dynamic>),
      result: json['Result'] as String?,
      text: json['Text'] as String?,
    );

Map<String, dynamic> _$$_RelatedTopicsToJson(_$_RelatedTopics instance) =>
    <String, dynamic>{
      'FirstURL': instance.firstURL,
      'Icon': instance.icon,
      'Result': instance.result,
      'Text': instance.text,
    };
