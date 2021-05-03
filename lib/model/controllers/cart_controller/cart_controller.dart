import 'package:amadon/model/controllers/cart_controller/cart_state.dart';
import 'package:amadon/model/entities/item/item.dart';
import 'package:amadon/model/entities/cart_item/cart_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartProvider =
    StateNotifierProvider<CartController, CartState>((ref) => CartController());

class CartController extends StateNotifier<CartState> {
  CartController() : super(CartState(cartItems: []));
  //cartItems: []なんで必要なん？

  void addToCart(Item item) {
    if (state.cartItems.any((c) => c.item == item)) {
      //すでにカートにあるなら
      final cartItem = state.cartItems.firstWhere((c) => c.item == item);
      increment(cartItem);
    } else {
      //カートに初めて入れるなら
      final ci = CartItem(item: item, quantity: 1);
      state = state.copyWith(cartItems: state.cartItems..add(ci));
    }
  }

  void delete(CartItem cartItem) {
    state = state.copyWith(cartItems: state.cartItems..remove(cartItem));
  }

  void increment(CartItem cartItem) {
    final index = state.cartItems.indexWhere((c) => c == cartItem);
    state = state.copyWith(
        cartItems: state.cartItems..[index] = cartItem.increment());
  }

  void decrement(CartItem cartItem) {
    final index = state.cartItems.indexWhere((c) => c == cartItem);
    state = state.copyWith(
        cartItems: state.cartItems..[index] = cartItem.decrement());
  }

  void clear() {
    state = state.copyWith(
      cartItems: state.cartItems..clear(),
    );
  }
}
