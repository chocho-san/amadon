import 'package:amadon/model/controllers/cart_controller/cart_controller.dart';
import 'package:amadon/pages/cart_page/order_button.dart';
import 'package:amadon/pages/cart_page/tile/cart_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cartState = useProvider(cartProvider);
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Text(
                        cartState.numberState,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        cartState.priceState,
                        style: Theme.of(context).accentTextTheme.headline5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _CartHeaderDelegate(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: OrderButton(),
              ),
            ),
          ),
        ];
      },
      body: Scrollbar(
        isAlwaysShown: false,
        child: ListView.builder(
          // padding: EdgeInsets.all(8),
          itemCount: cartState.cartItems.length,
          itemBuilder: (_, index) =>
              CartTile(cartItem: cartState.cartItems[index]),
        ),
      ),
    );
  }
}


class _CartHeaderDelegate extends SliverPersistentHeaderDelegate {
  _CartHeaderDelegate({required this.height, required this.child});

  final double height;
  final Widget child;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        height: height,
        child: child);
  }
}
