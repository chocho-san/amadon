import 'package:amadon/logger.dart';
import 'package:amadon/tab_type.dart';
import 'package:amadon/theme.dart';
import 'package:amadon/pages/app_bar/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MenuNavigator extends HookWidget {
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

class MenuPage extends HookWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    logger.info('build メニューページ');

    return Scaffold(
      appBar: AppBar(
        title: Text('メニュー'),
        backgroundColor: BuildTheme.appBarColor1,
      ),

      // appBar: const CommonAppBar(),
      body: ListView(
        children: [],
      ),
    );
  }
}
