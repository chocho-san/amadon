import 'package:flutter/material.dart';
import 'package:amadon/model/model.dart';
import 'package:amadon/pages/cart_page/tile/cart_tile_info.dart';
import 'package:amadon/pages/cart_page/tile/delete_button.dart';
import 'package:amadon/pages/cart_page/tile/quantity_change.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartTile extends HookWidget {
  const CartTile({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    final cartNotifier = useProvider(cartProvider.notifier);
    return Slidable(
      key: ValueKey(cartItem),
      actionPane: const SlidableStrechActionPane(),
      actionExtentRatio: 1 / 3,
      actions: <Widget>[
        SlideAction(
          color: Colors.red,
          onTap: () => cartNotifier.delete(cartItem),
          child: const Text(
            '削除',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
      secondaryActions: <Widget>[
        SlideAction(
          color: Colors.black12,
          onTap: () => cartNotifier.delete(cartItem),
          child: const Text('あとで買う'),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           CartTileInfo(cartItem),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                QuantityChange(
                  cartItem: cartItem,
                ),
                DeleteButton(cartItem),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
