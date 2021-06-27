
// import 'package:amadon/model/model.dart';
// import 'package:amadon/pages/cart_page/cart_page.dart';
// import 'package:amadon/pages/search_history/search_history_page.dart';
// import 'package:amadon/pages/top_page/top_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'items_page/items_list_page.dart';
//
// final currentPageProvider = StateProvider((ref) => 0);
//
// class PageList extends HookWidget {
//   const PageList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final pageController = useProvider(pageProvider);
//     final _list = [
//       const TopPage(),
//       const ItemsList(),
//       const CartPage(),
//       const SearchHistory(),
//     ];
//     return PageView(
//       scrollDirection: Axis.horizontal,
//       physics: const NeverScrollableScrollPhysics(),
//       controller: pageController,
//       onPageChanged: (index) {
//         context.read(currentPageProvider).state = index;
//       },
//       children: _list,
//     );
//   }
// }
