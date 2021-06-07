import 'package:amadon/model/model.dart';
import 'package:amadon/page_type.dart';
import 'package:amadon/pages/cart_page/header/cart_summary_info.dart';
import 'package:amadon/pages/cart_page/header/order_button.dart';
import 'package:amadon/pages/cart_page/tile/cart_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartPage extends HookWidget {
  const CartPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      // settings: RouteSettings(name: pageName[PageType.cart]),
      builder: (context) => const CartPage(),
    );
  }
  @override
  Widget build(BuildContext context) {
    // print(ModalRoute.of(context)!.settings.name);
    final cartItems = useProvider(cartProvider).cartItems;
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [const CartSummaryInfo()],
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _CartHeaderDelegate(
              height: 80,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: OrderButton(),
              ),
            ),
          ),
        ];
      },
      body: Scrollbar(
        isAlwaysShown: false,
        child: ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (_, index) {
              return ProviderScope(
                overrides: [
                  currentCartItem.overrideWithValue(cartItems[index]),
                ],
                child: const CartTile(),
              );
            }),
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
      child: child,
    );
  }
}
