import 'package:amadon/page_type.dart';
import 'package:amadon/pages/cart_page/cart_page.dart';
import 'package:amadon/pages/drawer/tile/drawer_header_tile.dart';
import 'package:amadon/pages/drawer/tile/drawer_tile.dart';
import 'package:amadon/pages/top_page/top_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuDrawer extends HookWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigatorKey = useProvider(navigatorKeyProvider);
    final page = useProvider(currentPageProvider);
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeaderTile(),
          DrawerTile(
            onTap: () {
              page.state = PageType.top;
               navigatorKey.state.currentState!.push(
                TopPage.route(),
              );
            },
            title: 'トップ',
          ),
          DrawerTile(
            onTap: () {
              page.state=PageType.cart;
                  navigatorKey.state.currentState!.push(
                CartPage.route(),
              );
            },
            title: 'カート',
          ),
          const Divider(),
        ],
      ),
    );
  }
}

// import 'package:amadon/pages/drawer/tile/drawer_header_tile.dart';
// import 'package:amadon/pages/drawer/tile/drawer_tile.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
//
// class MenuDrawer extends HookWidget {
//   const MenuDrawer({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: const <Widget>[
//            DrawerHeaderTile(),
//            DrawerTile(page:0, title:'トップ'),
//            DrawerTile(page:2, title:'カート'),
//            Divider(),
//         ],
//       ),
//     );
//   }
// }
