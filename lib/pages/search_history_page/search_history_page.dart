import 'package:amadon/model/model.dart';
import 'package:amadon/pages/search_history_page/tile/search_history_tile.dart';
import 'package:amadon/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchHistoryPage extends HookWidget {
  const SearchHistoryPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      // settings: RouteSettings(name: pageName[PageType.search]),
      builder: (context) => const SearchHistoryPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(ModalRoute.of(context)!.settings.name);
    final words = useProvider(itemsProvider).searchWords;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const CommonAppBar(),
        body: words.isEmpty
            ? const Text(
                '検索履歴が表示されます',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black38),
              )
            : ListView.builder(
                itemCount: words.length,
                itemBuilder: (_, index) {
                  return ProviderScope(
                    overrides: [
                      searchWord.overrideWithValue(words[index]),
                    ],
                    child: const SearchHistoryTile(),
                  );
                },
              ),
      ),
    );
  }
}
// import 'package:amadon/model/model.dart';
// import 'package:amadon/pages/search_history_page/tile/search_history_tile.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
// class SearchHistoryPage extends HookWidget {
//   const SearchHistoryPage({Key? key}) : super(key: key);
//
//   static Route<void> route() {
//     return PageRouteBuilder(
//       // settings: RouteSettings(name: pageName[PageType.search]),
//       pageBuilder: (_,__,___) => const SearchHistoryPage(),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // print(ModalRoute.of(context)!.settings.name);
//     final words = useProvider(itemsProvider).searchWords;
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).unfocus(),
//       child: words.isEmpty
//           ? const Text(
//               '検索履歴が表示されます',
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.black38),
//             )
//           : ListView.builder(
//               itemCount: words.length,
//               itemBuilder: (_, index) {
//                 return ProviderScope(
//                   overrides: [
//                     searchWord.overrideWithValue(words[index]),
//                   ],
//                   child: const SearchHistoryTile(),
//                 );
//               }),
//     );
//   }
// }
