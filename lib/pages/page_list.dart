import 'package:amadon/model/model.dart';
import 'package:amadon/pages/cart_page/cart_page.dart';
import 'package:amadon/pages/search_history.dart';
import 'package:amadon/pages/top_page/top_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'items_page/items_list.dart';


final  _pageController = PageController();

class PageList extends HookWidget {
  final _list = [
    TopPage(),
    ItemsList(),
    CartPage(),
    SearchHistory(),
  ];

  @override
  Widget build(BuildContext context) {


    return PageView(
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: _list,
    );
  }
}

final pageProvider =
StateNotifierProvider<PageRoute, int>((_) => PageRoute());


class PageRoute extends StateNotifier<int> {
  PageRoute() : super(0);

  void pageTrip(BuildContext context,int index) {
    if(index !=3){
      FocusScope.of(context).unfocus();
    }
    _pageController.jumpToPage(
      index,
    );
    state = index;
  }
}