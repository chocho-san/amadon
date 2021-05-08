import 'package:amadon/model/controllers/cart_controller/cart_controller.dart';
import 'package:amadon/model/entities/cart_item/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuantityChange extends HookWidget {
  const QuantityChange({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    // final cartState = useProvider(cartProvider);
    final cartNotifier = useProvider(cartProvider.notifier);
    // final index = cartState.cartItems.indexOf(cartItem);
    return Container(
      height: 32,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
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

class QuantityChangeButton extends StatelessWidget {
  const QuantityChangeButton({
    required this.isPlus,
    required this.icon,
    required this.onPressed,
  });

  final bool isPlus;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(
        right: isPlus ? const Radius.circular(5) : Radius.zero,
        left: isPlus ? Radius.zero : const Radius.circular(5),
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
              left: isPlus
                  ? const BorderSide(color: Colors.grey)
                  : BorderSide.none,
              right: isPlus
                  ? BorderSide.none
                  : const BorderSide(color: Colors.grey),
            ),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(246, 247, 249, 1),
                  Color.fromRGBO(230, 233, 236, 1),
                ])),
        child: IconButton(
          padding: const EdgeInsets.all(0),
          icon: Icon(icon),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
