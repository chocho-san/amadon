import 'package:amadon/pages/items_page/item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemsList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('結果'),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: 5,
            itemBuilder: (_, index) => ItemTile(index:index),
          ),
        ),
      ],
    );
  }
}
