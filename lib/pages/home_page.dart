import 'package:amadon/model/model.dart';
import 'package:amadon/pages/drawer/menu_drawer.dart';
import 'package:amadon/pages/page_list.dart';
import 'package:amadon/widgets/cart_button.dart';
import 'package:amadon/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isCartPage = context.read(currentPageProvider).state == 2;
    final pageNotifier = useProvider(pageProvider.notifier);
    return Container(
      color: const Color.fromRGBO(102, 203, 205, 1),
      child: SafeArea(
        child: Scaffold(
          // key: _scaffold,
          drawer: MenuDrawer(),
          onDrawerChanged: (isOpen) {
            print('開いたんか？$isOpen');
          },
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(!isCartPage ? 140 : 70),
            child: AppBar(
              title: TextButton(
                onPressed: () {
                  pageNotifier.pageTrip(context, 0);
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
                !isCartPage
                    ? Container()
                    : IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          pageNotifier.pageTrip(context, 3);
                        },
                      ),
                CartButton(),
              ],
              //カート画面では消える
              //しかし、サーチボタン押したら表示される。
              bottom: !isCartPage
                  ? PreferredSize(
                      preferredSize: const Size.fromHeight(50),
                      child: SearchBar(),
                    )
                  : null,
            ),
          ),
          body: PageList(),
        ),
      ),
    );
  }
}
