import 'package:amadon/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CartTileInfo extends HookWidget {
  const CartTileInfo(
     this.cartItem,
  ) ;

  final CartItem cartItem;
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}