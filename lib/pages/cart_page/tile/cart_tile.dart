import 'package:amadon/model/controllers/cart_controller/cart_controller.dart';
import 'package:amadon/model/entities/cart_item/cart_item.dart';
import 'package:amadon/pages/cart_page/tile/quantity_change.dart';
import 'package:flutter/material.dart';
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
          child: const Text('削除',style: TextStyle(color: Colors.white),),
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
            Row(
              children: [
                SizedBox(
                  width: 120,
                  height: 110,
                  child: Image.network(
                    cartItem.item.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 15),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartItem.item.itemName,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        cartItem.item.price,
                        style: Theme.of(context).accentTextTheme.headline5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                QuantityChange(
                  cartItem: cartItem,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    cartNotifier.delete(cartItem);
                  },
                  child: const Text('削除'),
                ),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
