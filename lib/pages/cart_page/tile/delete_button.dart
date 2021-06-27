import 'package:amadon/model/model.dart';
import 'package:amadon/pages/cart_page/tile/cart_tile.dart';
import 'package:amadon/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeleteButton extends ConsumerWidget {
  const DeleteButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItem = ref.watch(currentCartItem);
    void _delete() => ref.read(cartProvider.notifier).delete(cartItem);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: BuildTheme.borderColor),
        primary: Colors.white,
      ),
      onPressed: _delete,
      child: const Text('削除'),
    );
  }
}
