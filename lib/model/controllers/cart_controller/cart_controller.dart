
import 'package:amadon/model/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final cartProvider = StateNotifierProvider<CartController, List<CartItem>>(
    (ref) => CartController());

class CartController extends StateNotifier<List<CartItem>> {
  CartController() : super(<CartItem>[]);

  void addToCart(Item item) {
    if (state.any((c) => c.item == item)) {
      //すでにカートにあるなら
      final cartItem = state.firstWhere((c) => c.item == item);
      increment(cartItem);
    } else {
      //カートに初めて入れるなら
      final ci = CartItem(item: item, quantity: 1);
      state = state..add(ci);
    }
  }

  void delete(CartItem cartItem) {
    state = state..remove(cartItem);
  }

  void increment(CartItem cartItem) {
    final index = state.indexWhere((c) => c == cartItem);
    state = state..[index] = cartItem.increment();
  }

  void decrement(CartItem cartItem) {
    final index = state.indexWhere((c) => c == cartItem);
    state = state..[index] = cartItem.decrement();
    if (state[index].quantity < 1) {
      delete(state[index]);
    }
  }

  void clear() {
    state = state..clear();
  }


  String totalNumber() {
    final number = state.fold<int>(0, (count, ci) => count + ci.quantity);
    return '小計($number個の商品)(税込)：';
  }

  String totalPrice() {
    final price = state.fold<int>(
        0, (count, ci) => count + ci.item.itemPrice * ci.quantity);
    return '¥${NumberFormat('#,##0').format(price)}';
  }
}
