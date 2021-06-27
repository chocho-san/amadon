import 'package:amadon/logger.dart';
import 'package:amadon/pages/search_history_page/search_history_page.dart';
import 'package:amadon/theme.dart';
import 'package:amadon/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CommonAppBar extends HookWidget implements PreferredSizeWidget {
  const CommonAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isFocused = useState(false);

    final textFocusNode = useFocusNode();
    final textEditingController = useTextEditingController();

    useEffect(() {
      void listener() {
        isFocused.value = textFocusNode.hasFocus;
        logger.info(isFocused.value);

      }

      textFocusNode.addListener(listener);
      return;
    }, [textFocusNode]);

    final _searchField = SearchBar(
      textEditingController: textEditingController,
      focusNode: textFocusNode,
    );

    return AppBar(
      title: Row(
        children: [
          if (isFocused.value)
            IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: textFocusNode.unfocus,
            ),
          Expanded(child: _searchField),
        ],
      ),
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
