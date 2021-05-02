
import 'package:amadon/model/entities/item/item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'cart_item.freezed.dart';


@freezed
abstract class CartItem implements _$CartItem {
  factory CartItem({
    required Item item,
    required int quantity,
  }) = _CartItem;

  CartItem._();

  CartItem increased() => copyWith(quantity: quantity + 1);

  CartItem decreased() => copyWith(quantity: quantity - 1);

}