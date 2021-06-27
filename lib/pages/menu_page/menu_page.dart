import 'package:amadon/logger.dart';
import 'package:amadon/pages/bottom_tab/bottom_navigation.dart';
import 'package:amadon/tab_type.dart';
import 'package:amadon/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuNavigator extends StatelessWidget {
  const MenuNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: TabType.menu.globalKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (context) {
            return const MenuPage();
          },
        );
      },
    );
  }
}

class MenuPage extends ConsumerWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.info('build メニューページ');
    Widget _textButton(TabType type) {
      return TextButton(
        onPressed: () {
          ref.read(currentTabProvider).state = type;
        },
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(16),
        ),
        child: Text(
          type.text,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 24,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('メニュー'),
        backgroundColor: BuildTheme.appBarColor1,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 32),
        children: TabType.values.map(_textButton).toList(),
      ),
    );
  }
}
