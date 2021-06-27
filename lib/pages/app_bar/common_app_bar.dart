import 'package:amadon/theme.dart';
import 'package:amadon/pages/app_bar/search_bar.dart';
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
