import 'package:amadon/model/model.dart';
import 'package:amadon/pages/cart_page/tile/cart_tile.dart';
import 'package:amadon/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeleteButton extends ConsumerWidget {
  const DeleteButton();

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final cartItem = ref.watch(currentCartItem);
    final cartNotifier = ref.watch(cartProvider.notifier);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: BuildTheme.borderColor),
        primary: Colors.white,
      ),
      onPressed: () => cartNotifier.delete(cartItem),
      child: const Text('削除'),
    );
  }
}
