import 'package:amadon/model/controllers/cart_controller/cart_state.dart';
import 'package:amadon/model/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartProvider =
    StateNotifierProvider<CartController, CartState>((ref) => CartController());

class CartController extends StateNotifier<CartState> {
  CartController() : super(CartState(cartItems: []));

  void addToCart(Item item) {
    if (state.cartItems.any((c) => c.item == item)) {
      //すでにカートにあるなら
      final cartItem = state.cartItems.firstWhere((c) => c.item == item);
      increment(cartItem);
    } else {
      //カートに初めて入れるなら
      state = state.copyWith(
        cartItems: [
          ...state.cartItems,
          CartItem(item: item, quantity: 1),
        ],
      );
    }
  }

  void delete(CartItem cartItem) {
    state = state.copyWith(
      cartItems: state.cartItems..remove(cartItem),
    );
  }

  void increment(CartItem cartItem) {
    state = state.copyWith(
      cartItems: [
        for (final item in state.cartItems)
          if (item == cartItem)
            CartItem(
              item: item.item,
              quantity: item.quantity + 1,
            )
          else
            item,
      ],
    );
  }

  void decrement(CartItem cartItem) {
    if (cartItem.quantity > 1) {
      state = state.copyWith(
        cartItems: [
          for (final item in state.cartItems)
            if (item == cartItem)
              CartItem(
                item: item.item,
                quantity: item.quantity - 1,
              )
            else
              item,
        ],
      );
    } else {
      delete(cartItem);
    }
  }

  void clear() {
    state = state.copyWith(cartItems: []);
  }
}
