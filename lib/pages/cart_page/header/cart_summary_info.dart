import 'package:amadon/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartSummaryInfo extends HookWidget {
  const CartSummaryInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subtotal = useProvider(cartProvider.select((s) => s.numberState));
    final purchasePrice = useProvider(cartProvider.select((s) => s.priceState));

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Text(
            subtotal,
            style: Theme.of(context).primaryTextTheme.headline6,
          ),
          Text(
            purchasePrice,
            style: Theme.of(context).accentTextTheme.headline5,
          ),
        ],
      ),
    );
  }
}
