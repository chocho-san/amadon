import 'package:amadon/model/model.dart';
import 'package:amadon/page_type.dart';
import 'package:amadon/pages/cart_page/cart_page.dart';
import 'package:amadon/pages/top_page/top_page.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartButton extends HookWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigatorKey = useProvider(navigatorKeyProvider);
    final total = useProvider(cartProvider).totalNumber.toString();
    final page = useProvider(currentPageProvider);

    return Badge(
      position: BadgePosition.topEnd(top: 1, end: 15),
      animationDuration: const Duration(milliseconds: 50),
      animationType: BadgeAnimationType.scale,
      badgeColor: Colors.transparent,
      shape: BadgeShape.square,
      padding: const EdgeInsets.all(0),
      elevation: 0,
      badgeContent: Text(
        total,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      child: IconButton(
        icon: const Icon(Icons.shopping_cart),
        onPressed: () {
           page.state = PageType.cart;
           navigatorKey.state.currentState!.push(
            CartPage.route(),
          );
        },
      ),
    );
  }
}
// import 'package:amadon/model/model.dart';
// import 'package:badges/badges.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
// class CartButton extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     final pageNotifier = useProvider(pageProvider.notifier);
//     final total = useProvider(cartProvider).totalNumber.toString();
//     return Badge(
//       position: BadgePosition.topEnd(top: 1, end: 15),
//       animationDuration: const Duration(milliseconds: 50),
//       animationType: BadgeAnimationType.scale,
//       badgeColor: Colors.transparent,
//       shape: BadgeShape.square,
//       padding: const EdgeInsets.all(0),
//       elevation: 0,
//       badgeContent: Text(
//         total,
//         style: const TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 16,
//         ),
//       ),
//       child: IconButton(
//         icon: const Icon(Icons.shopping_cart),
//         onPressed: () => pageNotifier.pageTrip(context, 2),
//       ),
//     );
//   }
// }
