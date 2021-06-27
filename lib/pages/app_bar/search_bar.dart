import 'package:amadon/model/model.dart';
import 'package:amadon/pages/app_bar/search_controller.dart';
import 'package:amadon/pages/items_page/items_list_page.dart';
import 'package:amadon/pages/search_history_page/search_history_page.dart';
import 'package:amadon/pages/app_bar/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchBar extends HookWidget {
  const SearchBar({
    Key? key,
    this.isSearchPage = false,
  }) : super(key: key);

  final bool isSearchPage;

  @override
  Widget build(BuildContext context) {
    final textEditingController = useProvider(searchProvider);
    final itemsNotifier = useProvider(itemsProvider.notifier);
    final isFocused = useProvider(focusProvider);

    final textFocusNode = useFocusNode();

    useEffect(() {
      void listener() {
        isFocused.state = textFocusNode.hasFocus;
      }

      textFocusNode.addListener(listener);
      return;
    }, [textFocusNode]);

    return TextField(
        autofocus: isSearchPage,
        textInputAction: TextInputAction.search,
        focusNode: textFocusNode,
        controller: textEditingController,
        decoration: const InputDecoration(
          hintText: '何をお探しですか？',
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black54,
          ),
        ),
        onTap: () {
          if (!isSearchPage) {
            textFocusNode.unfocus();
          }
          if (!textFocusNode.hasFocus) {
            Navigator.of(context).push(
              SearchHistoryPage.route(),
            );
          }
        },
        onSubmitted: (word) {
          itemsNotifier.searchItems(word);
          textEditingController.text = word;
          Navigator.of(context).pushAndRemoveUntil(
            ItemsListPage.route(),
            ModalRoute.withName('/'),
          );
        });
  }
}
