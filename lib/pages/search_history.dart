import 'package:amadon/model/controllers/controllers.dart';
import 'package:amadon/pages/page_list.dart';
import 'package:amadon/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchHistory extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final words = useProvider(itemsProvider).searchWords;
    final itemsNotifier = useProvider(itemsProvider.notifier);
    final page = useProvider(pageProvider.notifier);

    return words.isEmpty
        ? const Text(
            '検索履歴が表示されます',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black38),
          )
        : ListView.builder(
            itemCount: words.length,
            itemBuilder: (_, index) => InkWell(
              onTap: () {
                textController.text = words[index];
                itemsNotifier.searchItems(words[index]);
                page.pageTrip(context, 1);
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
                        onPressed: () => itemsNotifier.deleteWord(index),
                      ),
                      const SizedBox(width: 2),
                      Text(words[index],
                          style: Theme.of(context).primaryTextTheme.bodyText2),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_upward,
                          color: Colors.black38,
                        ),
                        onPressed: () {
                          textController.text = words[index];
                          textController.selection = TextSelection.fromPosition(
                              TextPosition(offset: textController.text.length));

                          // itemsNotifier.switchWord(words[index]);
                        },
                      ),
                    ],
                  ),
                  const Divider(height: 0),
                ],
              ),
            ),
          );
  }
}
