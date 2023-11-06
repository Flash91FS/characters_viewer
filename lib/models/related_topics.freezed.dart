// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'related_topics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RelatedTopics _$RelatedTopicsFromJson(Map<String, dynamic> json) {
  return _RelatedTopics.fromJson(json);
}

/// @nodoc
mixin _$RelatedTopics {
  @JsonKey(name: 'FirstURL')
  String? get firstURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'Icon')
  CharacterIcon? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'Result')
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'Text')
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedTopicsCopyWith<RelatedTopics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedTopicsCopyWith<$Res> {
  factory $RelatedTopicsCopyWith(
          RelatedTopics value, $Res Function(RelatedTopics) then) =
      _$RelatedTopicsCopyWithImpl<$Res, RelatedTopics>;
  @useResult
  $Res call(
      {@JsonKey(name: 'FirstURL') String? firstURL,
      @JsonKey(name: 'Icon') CharacterIcon? icon,
      @JsonKey(name: 'Result') String? result,
      @JsonKey(name: 'Text') String? text});

  $CharacterIconCopyWith<$Res>? get icon;
}

/// @nodoc
class _$RelatedTopicsCopyWithImpl<$Res, $Val extends RelatedTopics>
    implements $RelatedTopicsCopyWith<$Res> {
  _$RelatedTopicsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstURL = freezed,
    Object? icon = freezed,
    Object? result = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      firstURL: freezed == firstURL
          ? _value.firstURL
          : firstURL // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as CharacterIcon?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterIconCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $CharacterIconCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RelatedTopicsCopyWith<$Res>
    implements $RelatedTopicsCopyWith<$Res> {
  factory _$$_RelatedTopicsCopyWith(
          _$_RelatedTopics value, $Res Function(_$_RelatedTopics) then) =
      __$$_RelatedTopicsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'FirstURL') String? firstURL,
      @JsonKey(name: 'Icon') CharacterIcon? icon,
      @JsonKey(name: 'Result') String? result,
      @JsonKey(name: 'Text') String? text});

  @override
  $CharacterIconCopyWith<$Res>? get icon;
}

/// @nodoc
class __$$_RelatedTopicsCopyWithImpl<$Res>
    extends _$RelatedTopicsCopyWithImpl<$Res, _$_RelatedTopics>
    implements _$$_RelatedTopicsCopyWith<$Res> {
  __$$_RelatedTopicsCopyWithImpl(
      _$_RelatedTopics _value, $Res Function(_$_RelatedTopics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstURL = freezed,
    Object? icon = freezed,
    Object? result = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_RelatedTopics(
      firstURL: freezed == firstURL
          ? _value.firstURL
          : firstURL // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as CharacterIcon?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelatedTopics extends _RelatedTopics with DiagnosticableTreeMixin {
  const _$_RelatedTopics(
      {@JsonKey(name: 'FirstURL') this.firstURL,
      @JsonKey(name: 'Icon') this.icon,
      @JsonKey(name: 'Result') this.result,
      @JsonKey(name: 'Text') this.text})
      : super._();

  factory _$_RelatedTopics.fromJson(Map<String, dynamic> json) =>
      _$$_RelatedTopicsFromJson(json);

  @override
  @JsonKey(name: 'FirstURL')
  final String? firstURL;
  @override
  @JsonKey(name: 'Icon')
  final CharacterIcon? icon;
  @override
  @JsonKey(name: 'Result')
  final String? result;
  @override
  @JsonKey(name: 'Text')
  final String? text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RelatedTopics(firstURL: $firstURL, icon: $icon, result: $result, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RelatedTopics'))
      ..add(DiagnosticsProperty('firstURL', firstURL))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('result', result))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelatedTopics &&
            (identical(other.firstURL, firstURL) ||
                other.firstURL == firstURL) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstURL, icon, result, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelatedTopicsCopyWith<_$_RelatedTopics> get copyWith =>
      __$$_RelatedTopicsCopyWithImpl<_$_RelatedTopics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelatedTopicsToJson(
      this,
    );
  }
}

abstract class _RelatedTopics extends RelatedTopics {
  const factory _RelatedTopics(
      {@JsonKey(name: 'FirstURL') final String? firstURL,
      @JsonKey(name: 'Icon') final CharacterIcon? icon,
      @JsonKey(name: 'Result') final String? result,
      @JsonKey(name: 'Text') final String? text}) = _$_RelatedTopics;
  const _RelatedTopics._() : super._();

  factory _RelatedTopics.fromJson(Map<String, dynamic> json) =
      _$_RelatedTopics.fromJson;

  @override
  @JsonKey(name: 'FirstURL')
  String? get firstURL;
  @override
  @JsonKey(name: 'Icon')
  CharacterIcon? get icon;
  @override
  @JsonKey(name: 'Result')
  String? get result;
  @override
  @JsonKey(name: 'Text')
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_RelatedTopicsCopyWith<_$_RelatedTopics> get copyWith =>
      throw _privateConstructorUsedError;
}
