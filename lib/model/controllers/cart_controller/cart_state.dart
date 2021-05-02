import 'package:amadon/model/entities/cart_item/cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'cart_state.freezed.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    @Default(<CartItem>[]) List<CartItem> cartItems,

  }) = _CartState;
  CartState._();

}
