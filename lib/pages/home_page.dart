import 'package:amadon/model/api.dart';
import 'package:amadon/pages/cart_page/cart_page.dart';
import 'package:amadon/pages/drawer/menu_drawer.dart';
import 'package:amadon/pages/items_page/items_list.dart';
import 'package:amadon/pages/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
final api=useProvider(itemsFetcher);
    return Container(
      color: const Color.fromRGBO(102, 203, 205, 1),
      child: SafeArea(
        child: Scaffold(
          drawer: MenuDrawer(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(140),
            child: AppBar(
              title: TextButton(
                onPressed: () {
                //  TODO: 画面更新
                },
                child: const Text('amadon'),
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
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: (){
                    api.getItems();
                  // TODO:検索バー表示する
                  },
                ),
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () =>
                      Navigator.pushNamed(context, CartPage.routeName),
                ),
              ],
              //カート画面では消える
              //しかし、サーチボタン押したら表示される。
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: SearchBar(),
              ),
            ),
          ),

          body:

          ItemsList(),
          // CartPage(),
        ),
      ),
    );
  }
}
