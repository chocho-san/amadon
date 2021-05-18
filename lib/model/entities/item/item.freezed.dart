// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(
      {required String itemName,
      required int itemPrice,
      required List<Map<String, String>> mediumImageUrls,
      required int reviewCount,
      required double reviewAverage}) {
    return _Item(
      itemName: itemName,
      itemPrice: itemPrice,
      mediumImageUrls: mediumImageUrls,
      reviewCount: reviewCount,
      reviewAverage: reviewAverage,
    );
  }

  Item fromJson(Map<String, Object> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  String get itemName => throw _privateConstructorUsedError;
  int get itemPrice => throw _privateConstructorUsedError;
  List<Map<String, String>> get mediumImageUrls =>
      throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  double get reviewAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {String itemName,
      int itemPrice,
      List<Map<String, String>> mediumImageUrls,
      int reviewCount,
      double reviewAverage});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? itemName = freezed,
    Object? itemPrice = freezed,
    Object? mediumImageUrls = freezed,
    Object? reviewCount = freezed,
    Object? reviewAverage = freezed,
  }) {
    return _then(_value.copyWith(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemPrice: itemPrice == freezed
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as int,
      mediumImageUrls: mediumImageUrls == freezed
          ? _value.mediumImageUrls
          : mediumImageUrls // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      reviewCount: reviewCount == freezed
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewAverage: reviewAverage == freezed
          ? _value.reviewAverage
          : reviewAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String itemName,
      int itemPrice,
      List<Map<String, String>> mediumImageUrls,
      int reviewCount,
      double reviewAverage});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? itemName = freezed,
    Object? itemPrice = freezed,
    Object? mediumImageUrls = freezed,
    Object? reviewCount = freezed,
    Object? reviewAverage = freezed,
  }) {
    return _then(_Item(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemPrice: itemPrice == freezed
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as int,
      mediumImageUrls: mediumImageUrls == freezed
          ? _value.mediumImageUrls
          : mediumImageUrls // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      reviewCount: reviewCount == freezed
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewAverage: reviewAverage == freezed
          ? _value.reviewAverage
          : reviewAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item extends _Item {
  _$_Item(
      {required this.itemName,
      required this.itemPrice,
      required this.mediumImageUrls,
      required this.reviewCount,
      required this.reviewAverage})
      : super._();

  factory _$_Item.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemFromJson(json);

  @override
  final String itemName;
  @override
  final int itemPrice;
  @override
  final List<Map<String, String>> mediumImageUrls;
  @override
  final int reviewCount;
  @override
  final double reviewAverage;

  @override
  String toString() {
    return 'Item(itemName: $itemName, itemPrice: $itemPrice, mediumImageUrls: $mediumImageUrls, reviewCount: $reviewCount, reviewAverage: $reviewAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.itemPrice, itemPrice) ||
                const DeepCollectionEquality()
                    .equals(other.itemPrice, itemPrice)) &&
            (identical(other.mediumImageUrls, mediumImageUrls) ||
                const DeepCollectionEquality()
                    .equals(other.mediumImageUrls, mediumImageUrls)) &&
            (identical(other.reviewCount, reviewCount) ||
                const DeepCollectionEquality()
                    .equals(other.reviewCount, reviewCount)) &&
            (identical(other.reviewAverage, reviewAverage) ||
                const DeepCollectionEquality()
                    .equals(other.reviewAverage, reviewAverage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(itemPrice) ^
      const DeepCollectionEquality().hash(mediumImageUrls) ^
      const DeepCollectionEquality().hash(reviewCount) ^
      const DeepCollectionEquality().hash(reviewAverage);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemToJson(this);
  }
}

abstract class _Item extends Item {
  factory _Item(
      {required String itemName,
      required int itemPrice,
      required List<Map<String, String>> mediumImageUrls,
      required int reviewCount,
      required double reviewAverage}) = _$_Item;
  _Item._() : super._();

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get itemName => throw _privateConstructorUsedError;
  @override
  int get itemPrice => throw _privateConstructorUsedError;
  @override
  List<Map<String, String>> get mediumImageUrls =>
      throw _privateConstructorUsedError;
  @override
  int get reviewCount => throw _privateConstructorUsedError;
  @override
  double get reviewAverage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}
