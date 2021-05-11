import 'package:amadon/model/controllers/cart_controller/cart_controller.dart';
import 'package:amadon/model/entities/cart_item/cart_item.dart';
import 'package:amadon/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'quantity_change_button.dart';

class QuantityChange extends HookWidget {
  const QuantityChange({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    final cartNotifier = useProvider(cartProvider.notifier);
    return Container(
      height: 32,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: BuildTheme.borderColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          QuantityChangeButton(
            icon: Icons.remove,
            isPlus: false,
            onPressed: () {
              cartNotifier.decrement(cartItem);
            },
          ),
          Text('${cartItem.quantity}'),
          QuantityChangeButton(
            icon: Icons.add,
            isPlus: true,
            onPressed: () {
              cartNotifier.increment(cartItem);
            },
          ),
        ],
      ),
    );
  }
}

