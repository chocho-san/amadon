import 'package:amadon/logger.dart';
import 'package:amadon/pages/search_history_page/search_history_page.dart';
import 'package:amadon/theme.dart';
import 'package:amadon/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final focusProvider = StateProvider<bool>((ref) => false);

class CommonAppBar extends HookWidget implements PreferredSizeWidget {
  const CommonAppBar({
    Key? key,
    this.isSearchPage = false,
  }) : super(key: key);
  final bool isSearchPage;

  @override
  Widget build(BuildContext context) {
    final _searchField = SearchBar(
      isSearchPage: isSearchPage,
    );

    return AppBar(
      title: _searchField,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: BuildTheme.appBarGradient,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
// import 'package:amadon/logger.dart';
// import 'package:amadon/pages/search_history_page/search_history_page.dart';
// import 'package:amadon/theme.dart';
// import 'package:amadon/widgets/search_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
// final focusProvider = StateProvider<bool>((ref) => false);
//
// class CommonAppBar extends HookWidget implements PreferredSizeWidget {
//   const CommonAppBar({
//     Key? key,
//     this.isSearchPage = false,
//   }) : super(key: key);
//   final bool isSearchPage;
//
//   @override
//   Widget build(BuildContext context) {
//     final isFocused = useProvider(focusProvider);
//     final textFocusNode = useFocusNode();
//     final textEditingController = useTextEditingController();
//
//     useEffect(() {
//       void listener() {
//         isFocused.state = textFocusNode.hasFocus;
//         logger.info(isFocused.state);
//       }
//
//       textFocusNode.addListener(listener);
//       return;
//     }, [textFocusNode]);
//
//     final _searchField = SearchBar(
//       isSearchPage: isSearchPage,
//       textEditingController: textEditingController,
//       focusNode: textFocusNode,
//     );
//
//     return AppBar(
//       title: Row(
//         children: [
//           if (isFocused.state)
//             IconButton(
//               icon: const Icon(Icons.arrow_back_outlined),
//               onPressed: textFocusNode.unfocus,
//             ),
//           Expanded(child: _searchField),
//         ],
//       ),
//       flexibleSpace: Container(
//         decoration: const BoxDecoration(
//           gradient: BuildTheme.appBarGradient,
//         ),
//       ),
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
