import 'package:amadon/model/model.dart';
import 'package:amadon/pages/cart_page/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'items_page/items_list.dart';

class PageList extends HookWidget {
  final _list = [
    ItemsList(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: _list,
    );
  }
}