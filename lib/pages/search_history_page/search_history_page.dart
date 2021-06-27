import 'package:amadon/model/model.dart';
import 'package:amadon/pages/search_history_page/tile/search_history_tile.dart';
import 'package:amadon/pages/app_bar/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchHistoryPage extends ConsumerWidget {
  const SearchHistoryPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const SearchHistoryPage(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final words = ref.watch(itemsProvider).searchWords;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const CommonAppBar(
          isSearchPage: true,
        ),
        body: words.isEmpty
            ? const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  '検索履歴が表示されます',
                  style: TextStyle(color: Colors.black38),
                ),
              )
            : ListView.builder(
                itemCount: words.length,
                itemBuilder: (_, index) {
                  return ProviderScope(
                    overrides: [
                      historyWord.overrideWithValue(words[index]),
                    ],
                    child: const SearchHistoryTile(),
                  );
                },
              ),
      ),
    );
  }
}
