import 'package:amadon/logger.dart';
import 'package:amadon/model/model.dart';
import 'package:amadon/tab_type.dart';
import 'package:amadon/pages/cart_page/header/cart_summary_info.dart';
import 'package:amadon/pages/cart_page/header/order_button.dart';
import 'package:amadon/pages/cart_page/tile/cart_tile.dart';
import 'package:amadon/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartNavigator extends StatelessWidget {
  const CartNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: TabType.cart.globalKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (context) {
            return const CartPage();
          },
        );
      },
    );
  }
}

class CartPage extends ConsumerWidget {
  const CartPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const CartPage(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.info('build カートページ');
    final cartItems = ref.watch(cartProvider).cartItems;
    return Scaffold(
      appBar: AppBar(
        title: const Text('カート'),
        backgroundColor: BuildTheme.appBarColor1,
      ),
      // appBar: const CommonAppBar(),
      body: NestedScrollView(
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
      ),
    );
  }
}

class _CartHeaderDelegate extends SliverPersistentHeaderDelegate {
  _CartHeaderDelegate({
    required this.height,
    required this.child,
  });

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
