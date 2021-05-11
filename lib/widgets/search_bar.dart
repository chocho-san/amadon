import 'package:amadon/model/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final textState = useProvider(searchProvider);
    final itemsNotifier = useProvider(itemsProvider.notifier);
    final pageNotifier = useProvider(pageProvider.notifier);
    final page = useProvider(pageProvider);
    final _wordNode = useFocusNode();

    _wordNode.addListener(() {
      if (_wordNode.hasFocus) {
        print('フォーカスしてる！！！！');
        return pageNotifier.pageTrip(context, 3);
      } else {
        print('フォーカスしてないよ');
      }
    });

    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
          autofocus: page == 3,
          // initialValue: itemsState.keyWord,
          textInputAction: TextInputAction.search,
          focusNode: _wordNode,
          controller: textState,
          decoration: const InputDecoration(
            hintText: '何をお探しですか？',
            contentPadding: EdgeInsets.symmetric(vertical: 5),
            prefixIcon: Icon(Icons.search),
          ),
          // onChanged: itemsNotifier.switchWord,
          onFieldSubmitted: (word) {
            itemsNotifier.searchItems(word);
            pageNotifier.pageTrip(context, 1);
          }),
    );
  }
}

