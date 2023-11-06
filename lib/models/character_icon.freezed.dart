// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_icon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterIcon _$CharacterIconFromJson(Map<String, dynamic> json) {
  return _CharacterIcon.fromJson(json);
}

/// @nodoc
mixin _$CharacterIcon {
  @JsonKey(name: 'Height')
  String? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'URL')
  String? get uRL => throw _privateConstructorUsedError;
  @JsonKey(name: 'Width')
  String? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterIconCopyWith<CharacterIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterIconCopyWith<$Res> {
  factory $CharacterIconCopyWith(
          CharacterIcon value, $Res Function(CharacterIcon) then) =
      _$CharacterIconCopyWithImpl<$Res, CharacterIcon>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Height') String? height,
      @JsonKey(name: 'URL') String? uRL,
      @JsonKey(name: 'Width') String? width});
}

/// @nodoc
class _$CharacterIconCopyWithImpl<$Res, $Val extends CharacterIcon>
    implements $CharacterIconCopyWith<$Res> {
  _$CharacterIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? uRL = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      uRL: freezed == uRL
          ? _value.uRL
          : uRL // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterIconCopyWith<$Res>
    implements $CharacterIconCopyWith<$Res> {
  factory _$$_CharacterIconCopyWith(
          _$_CharacterIcon value, $Res Function(_$_CharacterIcon) then) =
      __$$_CharacterIconCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Height') String? height,
      @JsonKey(name: 'URL') String? uRL,
      @JsonKey(name: 'Width') String? width});
}

/// @nodoc
class __$$_CharacterIconCopyWithImpl<$Res>
    extends _$CharacterIconCopyWithImpl<$Res, _$_CharacterIcon>
    implements _$$_CharacterIconCopyWith<$Res> {
  __$$_CharacterIconCopyWithImpl(
      _$_CharacterIcon _value, $Res Function(_$_CharacterIcon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? uRL = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_CharacterIcon(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      uRL: freezed == uRL
          ? _value.uRL
          : uRL // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterIcon with DiagnosticableTreeMixin implements _CharacterIcon {
  const _$_CharacterIcon(
      {@JsonKey(name: 'Height') this.height,
      @JsonKey(name: 'URL') this.uRL,
      @JsonKey(name: 'Width') this.width});

  factory _$_CharacterIcon.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterIconFromJson(json);

  @override
  @JsonKey(name: 'Height')
  final String? height;
  @override
  @JsonKey(name: 'URL')
  final String? uRL;
  @override
  @JsonKey(name: 'Width')
  final String? width;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharacterIcon(height: $height, uRL: $uRL, width: $width)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharacterIcon'))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('uRL', uRL))
      ..add(DiagnosticsProperty('width', width));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterIcon &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.uRL, uRL) || other.uRL == uRL) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, uRL, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterIconCopyWith<_$_CharacterIcon> get copyWith =>
      __$$_CharacterIconCopyWithImpl<_$_CharacterIcon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterIconToJson(
      this,
    );
  }
}

abstract class _CharacterIcon implements CharacterIcon {
  const factory _CharacterIcon(
      {@JsonKey(name: 'Height') final String? height,
      @JsonKey(name: 'URL') final String? uRL,
      @JsonKey(name: 'Width') final String? width}) = _$_CharacterIcon;

  factory _CharacterIcon.fromJson(Map<String, dynamic> json) =
      _$_CharacterIcon.fromJson;

  @override
  @JsonKey(name: 'Height')
  String? get height;
  @override
  @JsonKey(name: 'URL')
  String? get uRL;
  @override
  @JsonKey(name: 'Width')
  String? get width;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterIconCopyWith<_$_CharacterIcon> get copyWith =>
      throw _privateConstructorUsedError;
}
