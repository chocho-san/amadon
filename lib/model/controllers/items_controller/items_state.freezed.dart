// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'items_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemsStateTearOff {
  const _$ItemsStateTearOff();

  _ItemsState call(
      {List<Item> items = const <Item>[],
      String keyWord = '',
      List<String> searchWords = const <String>[],
      bool isLoading = false}) {
    return _ItemsState(
      items: items,
      keyWord: keyWord,
      searchWords: searchWords,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $ItemsState = _$ItemsStateTearOff();

/// @nodoc
mixin _$ItemsState {
  List<Item> get items => throw _privateConstructorUsedError;
  String get keyWord => throw _privateConstructorUsedError;
  List<String> get searchWords => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemsStateCopyWith<ItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsStateCopyWith<$Res> {
  factory $ItemsStateCopyWith(
          ItemsState value, $Res Function(ItemsState) then) =
      _$ItemsStateCopyWithImpl<$Res>;
  $Res call(
      {List<Item> items,
      String keyWord,
      List<String> searchWords,
      bool isLoading});
}

/// @nodoc
class _$ItemsStateCopyWithImpl<$Res> implements $ItemsStateCopyWith<$Res> {
  _$ItemsStateCopyWithImpl(this._value, this._then);

  final ItemsState _value;
  // ignore: unused_field
  final $Res Function(ItemsState) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? keyWord = freezed,
    Object? searchWords = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String,
      searchWords: searchWords == freezed
          ? _value.searchWords
          : searchWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ItemsStateCopyWith<$Res> implements $ItemsStateCopyWith<$Res> {
  factory _$ItemsStateCopyWith(
          _ItemsState value, $Res Function(_ItemsState) then) =
      __$ItemsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Item> items,
      String keyWord,
      List<String> searchWords,
      bool isLoading});
}

/// @nodoc
class __$ItemsStateCopyWithImpl<$Res> extends _$ItemsStateCopyWithImpl<$Res>
    implements _$ItemsStateCopyWith<$Res> {
  __$ItemsStateCopyWithImpl(
      _ItemsState _value, $Res Function(_ItemsState) _then)
      : super(_value, (v) => _then(v as _ItemsState));

  @override
  _ItemsState get _value => super._value as _ItemsState;

  @override
  $Res call({
    Object? items = freezed,
    Object? keyWord = freezed,
    Object? searchWords = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_ItemsState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String,
      searchWords: searchWords == freezed
          ? _value.searchWords
          : searchWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ItemsState extends _ItemsState {
  _$_ItemsState(
      {this.items = const <Item>[],
      this.keyWord = '',
      this.searchWords = const <String>[],
      this.isLoading = false})
      : super._();

  @JsonKey(defaultValue: const <Item>[])
  @override
  final List<Item> items;
  @JsonKey(defaultValue: '')
  @override
  final String keyWord;
  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> searchWords;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ItemsState(items: $items, keyWord: $keyWord, searchWords: $searchWords, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemsState &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.keyWord, keyWord) ||
                const DeepCollectionEquality()
                    .equals(other.keyWord, keyWord)) &&
            (identical(other.searchWords, searchWords) ||
                const DeepCollectionEquality()
                    .equals(other.searchWords, searchWords)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(keyWord) ^
      const DeepCollectionEquality().hash(searchWords) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$ItemsStateCopyWith<_ItemsState> get copyWith =>
      __$ItemsStateCopyWithImpl<_ItemsState>(this, _$identity);
}

abstract class _ItemsState extends ItemsState {
  factory _ItemsState(
      {List<Item> items,
      String keyWord,
      List<String> searchWords,
      bool isLoading}) = _$_ItemsState;
  _ItemsState._() : super._();

  @override
  List<Item> get items => throw _privateConstructorUsedError;
  @override
  String get keyWord => throw _privateConstructorUsedError;
  @override
  List<String> get searchWords => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemsStateCopyWith<_ItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}
