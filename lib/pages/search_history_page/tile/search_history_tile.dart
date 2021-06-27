import 'package:amadon/model/model.dart';
import 'package:amadon/pages/app_bar/search_controller.dart';
import 'package:amadon/pages/items_page/items_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final historyWord = ScopedProvider<String>(null);

class SearchHistoryTile extends HookWidget {
  const SearchHistoryTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final word = useProvider(historyWord);
    final itemsNotifier = useProvider(itemsProvider.notifier);
    final textNotifier = useProvider(searchProvider.notifier);
    return InkWell(
      key: ValueKey(word),
      onTap: () async {
        textNotifier.addWord(word);
        await Navigator.of(context).pushAndRemoveUntil(
          ItemsListPage.route(),
          ModalRoute.withName('/'),
        );
        await itemsNotifier.searchItems(word);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.clear,
                  color: Colors.black38,
                ),
                onPressed: () => itemsNotifier.deleteWord(word),
              ),
              const SizedBox(width: 2),
              Text(word, style: Theme.of(context).primaryTextTheme.bodyText2),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.arrow_upward,
                  color: Colors.black38,
                ),
                onPressed: () => textNotifier.addWord(word),
              ),
            ],
          ),
          const Divider(height: 0),
        ],
      ),
    );
  }
}
