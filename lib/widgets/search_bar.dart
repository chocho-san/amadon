import 'package:amadon/model/model.dart';
import 'package:amadon/page_type.dart';
import 'package:amadon/pages/items_page/items_list_page.dart';
import 'package:amadon/pages/search_history_page/search_history_page.dart';
import 'package:amadon/pages/top_page/top_page.dart';
import 'package:amadon/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchBar extends HookWidget {
  const SearchBar({
    Key? key,
    // required this.textEditingController,
    // required this.focusNode,
    this.isSearchPage = false,
  }) : super(key: key);

  // final TextEditingController textEditingController;
  // final FocusNode focusNode;
  final bool isSearchPage;

  @override
  Widget build(BuildContext context) {
    final textEditingController = useProvider(searchProvider);
    final itemsNotifier = useProvider(itemsProvider.notifier);
    // final navigatorKey = useProvider(navigatorKeyProvider);
    // final page = useProvider(currentPageProvider);
    // final isSearchPage = page.state == PageType.search;
    // final searchFocusNode = useFocusNode();
    // useListenable(searchFocusNode);

    // ///TODO:navigatorKeyアカン？
    // ///https://stackoverflow.com/questions/50535490/cannot-focus-on-textfield-in-new-page-after-navigating-in-flutter
    // ///フォーカスしない
    // searchFocusNode.addListener(() {
    //   if (searchFocusNode.hasFocus) {
    //     print('フォーカスした！！！');
    //
    //     // page.state = PageType.search;
    //     // navigatorKey.state.currentState!.push(
    //     //   SearchHistory.route(),
    //     // );
    //   }
    // });
    final isFocused = useProvider(focusProvider);

    final textFocusNode = useFocusNode();
    // final textEditingController = useTextEditingController();

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
// import 'package:amadon/model/model.dart';
// import 'package:amadon/pages/page_list.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
// class SearchBar extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     final textController = useProvider(searchProvider);
//     final itemsNotifier = useProvider(itemsProvider.notifier);
//     final pageNotifier = useProvider(pageProvider.notifier);
//     // final page = useProvider(currentPageProvider).state;
//     final _wordNode = useFocusNode();
//
//     _wordNode.addListener(() {
//       if (_wordNode.hasFocus) {
//         return pageNotifier.pageTrip(context, 3);
//       }
//     });
//
//     return Padding(
//       padding: const EdgeInsets.all(8),
//       child: TextFormField(
//           // autofocus: page == 3,
//           textInputAction: TextInputAction.search,
//           focusNode: _wordNode,
//           controller: textController,
//           decoration: const InputDecoration(
//             hintText: '何をお探しですか？',
//             contentPadding: EdgeInsets.symmetric(vertical: 5),
//             prefixIcon: Icon(
//               Icons.search,
//               color: Colors.black54,
//             ),
//           ),
//           onFieldSubmitted: (word) {
//             itemsNotifier.searchItems(word);
//             pageNotifier.pageTrip(context, 1);
//           }),
//     );
//   }
// }
