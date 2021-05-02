import 'package:amadon/model/controllers/cart_controller/cart_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartProvider = StateNotifierProvider<CartController, CartState>(
      (ref) => CartController());

class CartController extends StateNotifier<CartState> {
  CartController() : super(const CartState()) ;


}