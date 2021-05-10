import 'package:amadon/model/model.dart';
import 'package:amadon/pages/page_list.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final pageNotifier = useProvider(pageProvider.notifier);
    final  total = useProvider(cartProvider).totalNumber.toString();
    return Badge(
      position: BadgePosition.topEnd(top: 1, end: 13),
      animationDuration: const Duration(milliseconds: 400),
      animationType: BadgeAnimationType.scale,
      badgeColor: Color.fromRGBO(165, 231, 205, 1),
      shape: BadgeShape.square,
      padding: EdgeInsets.all(0),
      elevation: 0,
      badgeContent: Text(
        total,
        style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
      child: IconButton(
          icon: const Icon(Icons.shopping_cart),
          iconSize: 30,
          onPressed: () {
            pageNotifier.pageTrip(
                /*_scaffold.currentContext!*/
                context,
                2);
          }),
    );
  }
}
