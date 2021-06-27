import 'package:amadon/model/model.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartButton extends ConsumerWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final total = ref.watch(cartProvider).totalNumber.toString();
    return Badge(
      position: BadgePosition.topEnd(top: -12, end: -8),
      animationDuration: const Duration(milliseconds: 50),
      animationType: BadgeAnimationType.scale,
      badgeColor: Colors.transparent,
      shape: BadgeShape.square,
      padding: const EdgeInsets.all(0),
      elevation: 0,
      badgeContent: Text(
        total,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      child: const Icon(Icons.shopping_cart_outlined),
    );
  }
}
