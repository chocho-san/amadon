import 'package:amadon/model/model.dart';
import 'package:amadon/theme.dart';
import 'package:amadon/pages/cart_page/tile/cart_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'quantity_change_button.dart';

class QuantityChange extends ConsumerWidget {
  const QuantityChange({Key? key}) : super(key: key);
  static const double _radius = 5;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final cartItem = ref.watch(currentCartItem);
    final cartNotifier = ref.watch(cartProvider.notifier);
    return Container(
      height: 32,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: BuildTheme.borderColor),
        borderRadius: BorderRadius.circular(_radius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          QuantityChangeButton(
            isPlus: false,
            radius: _radius,
            icon: Icons.remove,
            onPressed: () => cartNotifier.decrement(cartItem),
          ),
          Text('${cartItem.quantity}'),
          QuantityChangeButton(
            isPlus: true,
            radius: _radius,
            icon: Icons.add,
            onPressed: () => cartNotifier.increment(cartItem),
          ),
        ],
      ),
    );
  }
}
