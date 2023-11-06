// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RelatedTopics> allItems,
            List<RelatedTopics> filteredItems, RelatedTopics? selectedItem)
        loaded,
    required TResult Function() loading,
    required TResult Function() failedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RelatedTopics> allItems,
            List<RelatedTopics> filteredItems, RelatedTopics? selectedItem)?
        loaded,
    TResult? Function()? loading,
    TResult? Function()? failedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RelatedTopics> allItems,
            List<RelatedTopics> filteredItems, RelatedTopics? selectedItem)?
        loaded,
    TResult Function()? loading,
    TResult Function()? failedToLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(FailedToLoad value) failedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Data value)? loaded,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailedToLoad value)? failedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(FailedToLoad value)? failedToLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<RelatedTopics> allItems,
      List<RelatedTopics> filteredItems,
      RelatedTopics? selectedItem});

  $RelatedTopicsCopyWith<$Res>? get selectedItem;
}

/// @nodoc
class __$$DataCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res, _$Data>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allItems = null,
    Object? filteredItems = null,
    Object? selectedItem = freezed,
  }) {
    return _then(_$Data(
      allItems: null == allItems
          ? _value._allItems
          : allItems // ignore: cast_nullable_to_non_nullable
              as List<RelatedTopics>,
      filteredItems: null == filteredItems
          ? _value._filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as List<RelatedTopics>,
      selectedItem: freezed == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as RelatedTopics?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RelatedTopicsCopyWith<$Res>? get selectedItem {
    if (_value.selectedItem == null) {
      return null;
    }

    return $RelatedTopicsCopyWith<$Res>(_value.selectedItem!, (value) {
      return _then(_value.copyWith(selectedItem: value));
    });
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(
      {required final List<RelatedTopics> allItems,
      required final List<RelatedTopics> filteredItems,
      this.selectedItem})
      : _allItems = allItems,
        _filteredItems = filteredItems;

  final List<RelatedTopics> _allItems;
  @override
  List<RelatedTopics> get allItems {
    if (_allItems is EqualUnmodifiableListView) return _allItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allItems);
  }

  final List<RelatedTopics> _filteredItems;
  @override
  List<RelatedTopics> get filteredItems {
    if (_filteredItems is EqualUnmodifiableListView) return _filteredItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredItems);
  }

  @override
  final RelatedTopics? selectedItem;

  @override
  String toString() {
    return 'SearchState.loaded(allItems: $allItems, filteredItems: $filteredItems, selectedItem: $selectedItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data &&
            const DeepCollectionEquality().equals(other._allItems, _allItems) &&
            const DeepCollectionEquality()
                .equals(other._filteredItems, _filteredItems) &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allItems),
      const DeepCollectionEquality().hash(_filteredItems),
      selectedItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RelatedTopics> allItems,
            List<RelatedTopics> filteredItems, RelatedTopics? selectedItem)
        loaded,
    required TResult Function() loading,
    required TResult Function() failedToLoad,
  }) {
    return loaded(allItems, filteredItems, selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RelatedTopics> allItems,
            List<RelatedTopics> filteredItems, RelatedTopics? selectedItem)?
        loaded,
    TResult? Function()? loading,
    TResult? Function()? failedToLoad,
  }) {
    return loaded?.call(allItems, filteredItems, selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RelatedTopics> allItems,
            List<RelatedTopics> filteredItems, RelatedTopics? selectedItem)?
        loaded,
    TResult Function()? loading,
    TResult Function()? failedToLoad,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(allItems, filteredItems, selectedItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(FailedToLoad value) failedToLoad,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Data value)? loaded,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailedToLoad value)? failedToLoad,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(FailedToLoad value)? failedToLoad,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Data implements SearchState {
  const factory Data(
      {required final List<RelatedTopics> allItems,
      required final List<RelatedTopics> filteredItems,
      final RelatedTopics? selectedItem}) = _$Data;

  List<RelatedTopics> get allItems;
  List<RelatedTopics> get filteredItems;
  RelatedTopics? get selectedItem;
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RelatedTopics> allItems,
            List<RelatedTopics> filteredItems, RelatedTopics? selectedItem)
        loaded,
    required TResult Function() loading,
    required TResult Function() failedToLoad,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RelatedTopics> allItems,
            List<RelatedTopics> filteredItems, RelatedTopics? selectedItem)?
        loaded,
    TResult? Function()? loading,
    TResult? Function()? failedToLoad,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RelatedTopics> allItems,
            List<RelatedTopics> filteredItems, RelatedTopics? selectedItem)?
        loaded,
    TResult Function()? loading,
    TResult Function()? failedToLoad,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(FailedToLoad value) failedToLoad,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Data value)? loaded,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailedToLoad value)? failedToLoad,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(FailedToLoad value)? failedToLoad,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SearchState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$FailedToLoadCopyWith<$Res> {
  factory _$$FailedToLoadCopyWith(
          _$FailedToLoad value, $Res Function(_$FailedToLoad) then) =
      __$$FailedToLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToLoadCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$FailedToLoad>
    implements _$$FailedToLoadCopyWith<$Res> {
  __$$FailedToLoadCopyWithImpl(
      _$FailedToLoad _value, $Res Function(_$FailedToLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedToLoad implements FailedToLoad {
  const _$FailedToLoad();

  @override
  String toString() {
    return 'SearchState.failedToLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedToLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RelatedTopics> allItems,
            List<RelatedTopics> filteredItems, RelatedTopics? selectedItem)
        loaded,
    required TResult Function() loading,
    required TResult Function() failedToLoad,
  }) {
    return failedToLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RelatedTopics> allItems,
            List<RelatedTopics> filteredItems, RelatedTopics? selectedItem)?
        loaded,
    TResult? Function()? loading,
    TResult? Function()? failedToLoad,
  }) {
    return failedToLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RelatedTopics> allItems,
            List<RelatedTopics> filteredItems, RelatedTopics? selectedItem)?
        loaded,
    TResult Function()? loading,
    TResult Function()? failedToLoad,
    required TResult orElse(),
  }) {
    if (failedToLoad != null) {
      return failedToLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(FailedToLoad value) failedToLoad,
  }) {
    return failedToLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Data value)? loaded,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailedToLoad value)? failedToLoad,
  }) {
    return failedToLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(FailedToLoad value)? failedToLoad,
    required TResult orElse(),
  }) {
    if (failedToLoad != null) {
      return failedToLoad(this);
    }
    return orElse();
  }
}

abstract class FailedToLoad implements SearchState {
  const factory FailedToLoad() = _$FailedToLoad;
}
