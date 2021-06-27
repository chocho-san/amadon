// enum PageType { top, items, cart, search }
//
// const Map<PageType, String> pageName = {
//   PageType.top: 'top',
//   PageType.items: 'items',
//   PageType.cart: 'cart',
//   PageType.search: 'search',
// };

import 'package:amadon/pages/cart_page/cart_page.dart';
import 'package:amadon/pages/menu_page/menu_page.dart';
import 'package:amadon/pages/top_page/top_page.dart';
import 'package:flutter/material.dart';

final _topGlobalKey = GlobalKey<NavigatorState>();
final _cartGlobalKey = GlobalKey<NavigatorState>();
final _menuGlobalKey = GlobalKey<NavigatorState>();

enum TabType { top, cart, menu }

extension TabTypeEx on TabType {
  IconData get iconData {
    switch (this) {
      case TabType.top:
        return Icons.home_outlined;
      case TabType.cart:
        return Icons.shopping_cart_outlined;
      case TabType.menu:
        return Icons.menu;
    }
  }

  GlobalKey<NavigatorState> get globalKey {
    switch (this) {
      case TabType.top:
        return _topGlobalKey;
      case TabType.cart:
        return _cartGlobalKey;
      case TabType.menu:
        return _menuGlobalKey;
    }
  }

  Widget get navigator {
    switch (this) {
      case TabType.top:
        return const TopNavigator();
      case TabType.cart:
        return const CartNavigator();
      case TabType.menu:
        return const MenuNavigator();
    }
  }
}
