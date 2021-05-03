import 'package:amadon/model/controllers/cart_controller/cart_controller.dart';
import 'package:amadon/pages/cart_page/cart_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartPage extends HookWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cartState = useProvider(cartProvider);
    final cartNotifier = useProvider(cartProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('カート')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  cartState.numberState,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  cartState.priceState,
                  style: Theme.of(context).accentTextTheme.headline5,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: cartNotifier.clear,
                child: Text('購入する'),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: CartList(),
          ),
        ],
      ),
    );
  }
}

class CartList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cartState = useProvider(cartProvider);

    return Scrollbar(
      isAlwaysShown: false,
      child: ListView.builder(
        // padding: EdgeInsets.all(8),
        itemCount: cartState.cartItems.length,
        itemBuilder: (_, index) =>
            CartTile(cartItem: cartState.cartItems[index]),
      ),
    );
  }
}
