// import 'package:amadon/app_title.dart';
// import 'package:amadon/page_type.dart';
// import 'package:amadon/pages/search_history/search_history.dart';
// import 'package:amadon/pages/top_page/top_page.dart';
// import 'package:amadon/theme.dart';
// import 'package:amadon/widgets/cart_button.dart';
// import 'package:amadon/widgets/search_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
// class CommonAppBar extends HookWidget {
//    CommonAppBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final navigatorKey = useProvider(navigatorKeyProvider);
//     final title = useProvider(titleProvider);
//     final isCartPage = ModalRoute.of(context)!.settings.name ==
//         pageName[PageType.cart];
//     print(isCartPage);
//     return AppBar(
//       title: TextButton(
//         onPressed: () {
//            page.state = PageType.;     navigatorKey.state.currentState!.push(TopPage.route());
//         },
//         child: Text(title),
//       ),
//       flexibleSpace: Container(
//         decoration: const BoxDecoration(gradient: BuildTheme.appBarGradient),
//       ),
//       actions: [
//         !isCartPage
//             ? Container()
//             : IconButton(
//                 icon: const Icon(Icons.search),
//                 onPressed: () {
//                    page.state = PageType.;     navigatorKey.state.currentState!.push(
//                     SearchHistory.route(),
//                   );
//                 },
//               ),
//         const CartButton(),
//       ],
//       //カート画面では消える
//       //しかし、サーチボタン押したら表示される。
//       bottom: isCartPage
//           ? null
//           : PreferredSize(
//               preferredSize: Size.fromHeight(kToolbarHeight),
//               child: SearchBar()),
//     );
//   }
// }
