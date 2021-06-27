import 'package:amadon/pages/cart_page/tile/cart_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartTileInfo extends ConsumerWidget {
  const CartTileInfo();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItem = ref.watch(currentCartItem).item;
    return Row(
      children: [
        SizedBox(
          width: 120,
          height: 110,
          child: Image.network(cartItem.imageUrl, fit: BoxFit.cover),
        ),
        const SizedBox(width: 15),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartItem.itemName,
                style: const TextStyle(fontSize: 18),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              Text(
                cartItem.price,
                style: Theme.of(context).accentTextTheme.headline5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
