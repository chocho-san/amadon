import 'package:amadon/pages/cart_page/cart_tile.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Text(
                '小計(2個の商品)(税込)：',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                '¥5,999',
                style: Theme.of(context).accentTextTheme.headline5,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            height: 45,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('購入する'),
            ),
          ),
        ),
        const Divider(),
        Expanded(
          child: CartList(),
        ),
      ],
    );
  }
}

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // padding: EdgeInsets.all(8),
      itemCount: 5,
      itemBuilder: (_, index) => CartTile(index: index),
    );
  }
}
