import 'package:amadon/model/entities/cart_item/cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  factory CartState({
    @Default(<CartItem>[]) List<CartItem> cartItems,
  }) = _CartState;

  late final int totalNumber =
      cartItems.fold(0, (count, ci) => count + ci.quantity);
  late final String numberState = '小計($totalNumber個の商品)(税込)：';

  late final int totalPrice =
      cartItems.fold(0, (count, ci) => count + ci.item.itemPrice * ci.quantity);
  late final String priceState = '¥${NumberFormat('#,##0').format(totalPrice)}';
}
