import 'package:amadon/model/controllers/cart_controller/cart_controller.dart';
import 'package:amadon/pages/cart_page/cart_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartPage extends HookWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cartState = useProvider(cartProvider);
    final cartNotifier = useProvider(cartProvider.notifier);

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
                        cartNotifier.totalNumber(),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        cartNotifier.totalPrice(),
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
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: cartNotifier.clear,
                    child: const Text(
                      '購入する',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ];
      },
      body: Scrollbar(
        isAlwaysShown: false,
        child: ListView.builder(
          // padding: EdgeInsets.all(8),
          itemCount: cartState.length,
          itemBuilder: (_, index) => CartTile(cartItem: cartState[index]),
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
    return SizedBox(height: height, child: child);
  }
}
