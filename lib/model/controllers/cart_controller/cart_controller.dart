import 'package:amadon/model/controllers/cart_controller/cart_state.dart';
import 'package:amadon/model/entities/item/item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartProvider = StateNotifierProvider<CartController, CartState>(
      (ref) => CartController());

class CartController extends StateNotifier<CartState> {
  CartController() : super(const CartState()) ;

  void addToCart(Item item){
    if(state.cartItems.contains(item)) {

    }else{

    }
  }
}