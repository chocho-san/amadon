import 'package:amadon/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cartNotifier = useProvider(cartProvider.notifier);
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