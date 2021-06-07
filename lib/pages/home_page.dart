import 'package:amadon/app_title.dart';
import 'package:amadon/page_type.dart';
import 'package:amadon/pages/drawer/menu_drawer.dart';
import 'package:amadon/pages/search_history/search_history.dart';
import 'package:amadon/pages/top_page/top_page.dart';
import 'package:amadon/theme.dart';
import 'package:amadon/widgets/common_app_bar.dart';
import 'package:amadon/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigatorKey = useProvider(navigatorKeyProvider);
    final title = useProvider(titleProvider);
    final page = useProvider(currentPageProvider);
    final isCartPage = page.state == PageType.cart;
    print(isCartPage);
    return Container(
      color: BuildTheme.unSafeAreaColor,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          drawer: const MenuDrawer(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(isCartPage ? 70 : 140),
            child: AppBar(
              title: TextButton(
                onPressed: () {
                  page.state = PageType.top;
                  navigatorKey.state.currentState!.push(TopPage.route());
                },
                child: Text(title),
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
                        onPressed: () {
                          page.state = PageType.search;
                          navigatorKey.state.currentState!.push(
                            SearchHistory.route(),
                          );
                        },
                      ),
                const CartButton(),
              ],
              //カート画面では消える
              //しかし、サーチボタン押したら表示される。
              bottom: !isCartPage
                  ? PreferredSize(
                      preferredSize: Size.fromHeight(kToolbarHeight),
                      child: SearchBar())
                  : null,
            ),
          ),
          body: const PageRouter(),
        ),
      ),
    );
  }
}
// import 'package:amadon/app_title.dart';
// import 'package:amadon/model/model.dart';
// import 'package:amadon/pages/drawer/menu_drawer.dart';
// import 'package:amadon/pages/page_list.dart';
// import 'package:amadon/theme.dart';
// import 'package:amadon/widgets/widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
// class HomePage extends HookWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     final title = useProvider(titleProvider);
//     final isCartPage = useProvider(currentPageProvider).state == 2;
//     final pageNotifier = useProvider(pageProvider.notifier);
//     return Container(
//       color: BuildTheme.unSafeAreaColor,
//       child: SafeArea(
//         bottom: false,
//         child: Scaffold(
//           drawer: const MenuDrawer(),
//           appBar: PreferredSize(
//             preferredSize: Size.fromHeight(!isCartPage ? 140 : 70),
//             child: AppBar(
//               title: TextButton(
//                 onPressed: () => pageNotifier.pageTrip(context, 0),
//                 child: Text(title),
//               ),
//               flexibleSpace: Container(
//                 decoration:
//                     const BoxDecoration(gradient: BuildTheme.appBarGradient),
//               ),
//               actions: [
//                 !isCartPage
//                     ? Container()
//                     : IconButton(
//                         icon: const Icon(Icons.search),
//                         onPressed: () => pageNotifier.pageTrip(context, 3),
//                       ),
//                 CartButton(),
//               ],
//               //カート画面では消える
//               //しかし、サーチボタン押したら表示される。
//               bottom: !isCartPage
//                   ? PreferredSize(
//                       preferredSize: const Size.fromHeight(50),
//                       child: SearchBar(),
//                     )
//                   : null,
//             ),
//           ),
//           body: const PageList(),
//         ),
//       ),
//     );
//   }
// }
