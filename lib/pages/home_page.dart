import 'package:amadon/model/api.dart';
import 'package:amadon/model/controllers/page_controller/page_controller.dart';
import 'package:amadon/pages/cart_page/cart_page.dart';
import 'package:amadon/pages/drawer/menu_drawer.dart';
import 'package:amadon/pages/items_page/items_list.dart';
import 'package:amadon/pages/page_list.dart';
import 'package:amadon/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final pageState = useProvider(pageProvider);

    final pageNotifier = useProvider(pageProvider.notifier);

    // final page = useProvider(pageProvider);

    return Container(
      color: const Color.fromRGBO(102, 203, 205, 1),
      child: SafeArea(
        child: Scaffold(
            drawer: MenuDrawer(),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(pageState != 2 ? 140 : 70),
              child: AppBar(
                title: TextButton(
                  onPressed: () {
                    pageNotifier.pageTrip(context,0);
                    //  TODO: 画面更新
                  },
                  child: Text('amadon'),
                ),
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: <Color>[
                        Color.fromRGBO(130, 216, 227, 1),
                        Color.fromRGBO(165, 231, 205, 1),
                      ])),
                ),
                actions: [
                  pageState != 2
                      ? Container()
                      : IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            pageNotifier.pageTrip(context,3);
                            // TODO:検索バー表示する
                          },
                        ),
                  IconButton(
                      icon: Icon(Icons.shopping_cart),
                      onPressed: () {
                        pageNotifier.pageTrip(context,2);
                      }
                      ),
                ],
                //カート画面では消える
                //しかし、サーチボタン押したら表示される。
                bottom: pageState == 2
                    ? null
                    : PreferredSize(
                        preferredSize: const Size.fromHeight(50),
                        child: SearchBar(),
                      ),
              ),
            ),
            body: PageList()),
      ),
    );
  }
}
