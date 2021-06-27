import 'package:amadon/pages/cart_page/cart_page.dart';
import 'package:amadon/pages/menu_page/menu_page.dart';
import 'package:amadon/pages/top_page/top_page.dart';
import 'package:amadon/widgets/widgets.dart';
import 'package:flutter/material.dart';

final _topGlobalKey = GlobalKey<NavigatorState>();
final _cartGlobalKey = GlobalKey<NavigatorState>();
final _menuGlobalKey = GlobalKey<NavigatorState>();

enum TabType { top, cart, menu }

extension TabTypeEx on TabType {
  Widget get tabItem {
    switch (this) {
      case TabType.top:
        return const Icon(Icons.home_outlined);
      case TabType.cart:
        return const CartButton();
      case TabType.menu:
        return const Icon(Icons.menu);
    }
  }

  String get text {
    switch (this) {
      case TabType.top:
        return 'トップ';
      case TabType.cart:
        return 'カート';
      case TabType.menu:
        return 'メニュー';
    }
  }

  String get tabToolTip {
    switch (this) {
      case TabType.top:
        return 'top';
      case TabType.cart:
        return 'cart';
      case TabType.menu:
        return 'menu';
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
