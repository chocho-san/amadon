import 'package:amadon/main.dart';
import 'package:amadon/model/model.dart';
import 'package:amadon/pages/drawer/menu_drawer.dart';
import 'package:amadon/pages/page_list.dart';
import 'package:amadon/theme.dart';
import 'package:amadon/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isCartPage = useProvider(currentPageProvider).state == 2;
    final pageNotifier = useProvider(pageProvider.notifier);
    return Container(
      color: BuildTheme.unSafeAreaColor,
      child: SafeArea(
        child: Scaffold(
          drawer: MenuDrawer(),
          appBar: PreferredSize(

            preferredSize: Size.fromHeight(!isCartPage ? 140 : 60),
            child: AppBar(
              title: TextButton(
                onPressed: () => pageNotifier.pageTrip(context, 0),
                child: const Text(appTitle),
              ),
              flexibleSpace: Container(
                decoration:
                    const BoxDecoration(gradient: BuildTheme.appBarGradient),
              ),
              actions: [
                !isCartPage
                    ? Container()
                    : IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () => pageNotifier.pageTrip(context, 3),
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
