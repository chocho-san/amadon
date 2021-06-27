import 'package:amadon/model/model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderButton extends ConsumerWidget {
  const OrderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final cartNotifier = ref.watch(cartProvider.notifier);
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: cartNotifier.clear,
        child: const Text(
          '購入する',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
