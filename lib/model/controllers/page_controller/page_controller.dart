import 'package:amadon/pages/cart_page/cart_page.dart';
import 'package:amadon/pages/items_page/items_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final pageProvider =
    StateNotifierProvider<PageRoute, int>((_) => PageRoute());

final PageController pageController = PageController();

class PageRoute extends StateNotifier<int> {
  PageRoute() : super(0);

  void pageTrip(int index) {
    pageController.animateToPage(
      index,
      duration: Duration(seconds: 1),
      curve: Curves.linear,
    );
    state = index;
  }
}


