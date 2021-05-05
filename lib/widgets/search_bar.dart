import 'package:amadon/model/controllers/items_controller/items_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final itemsState=useProvider(itemsProvider);

    final itemsNotifier=useProvider(itemsProvider.notifier);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        initialValue: itemsState.keyWord,
        textInputAction: TextInputAction.search,
        /*Enterを虫眼鏡アイコンに*/

        decoration: const InputDecoration(

          hintText: '何をお探しですか？',
          contentPadding:  EdgeInsets.symmetric(vertical: 5),
          prefixIcon: Icon(Icons.search),
        ),
        onFieldSubmitted: itemsNotifier.searchItems,
      ),
    );
  }
}
