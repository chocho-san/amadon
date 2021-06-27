import 'package:amadon/theme.dart';
import 'package:amadon/pages/app_bar/search_bar.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
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
