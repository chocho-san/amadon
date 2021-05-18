// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartState call({List<CartItem> cartItems = const <CartItem>[]}) {
    return _CartState(
      cartItems: cartItems,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  List<CartItem> get cartItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({List<CartItem> cartItems});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? cartItems = freezed,
  }) {
    return _then(_value.copyWith(
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc
abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CartItem> cartItems});
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object? cartItems = freezed,
  }) {
    return _then(_CartState(
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc

class _$_CartState extends _CartState with DiagnosticableTreeMixin {
  _$_CartState({this.cartItems = const <CartItem>[]}) : super._();

  @JsonKey(defaultValue: const <CartItem>[])
  @override
  final List<CartItem> cartItems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState(cartItems: $cartItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState'))
      ..add(DiagnosticsProperty('cartItems', cartItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartState &&
            (identical(other.cartItems, cartItems) ||
                const DeepCollectionEquality()
                    .equals(other.cartItems, cartItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cartItems);

  @JsonKey(ignore: true)
  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState extends CartState {
  factory _CartState({List<CartItem> cartItems}) = _$_CartState;
  _CartState._() : super._();

  @override
  List<CartItem> get cartItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartStateCopyWith<_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
