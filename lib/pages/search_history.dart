import 'package:amadon/model/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchHistory extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final words = useProvider(itemsProvider).searchWords;
    final itemsNotifier = useProvider(itemsProvider.notifier);
    final page = useProvider(pageProvider.notifier);

    return ListView.builder(
      itemCount: words.length,
      itemBuilder: (_, index) => Column(
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
              TextButton(
                onPressed: () {
                  itemsNotifier.searchItems(words[index]);
                  page.pageTrip(context,1);
                  },
                child: Text(words[index],
                    style: Theme.of(context).primaryTextTheme.bodyText2),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.arrow_upward,
                  color: Colors.black38,
                ),
                onPressed: () {
                  itemsNotifier.switchWord(words[index]);
                },
              ),
            ],
          ),
          const Divider(height: 0),
        ],
      ),
    );
  }
}
