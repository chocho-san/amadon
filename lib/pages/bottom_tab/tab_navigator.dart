import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TabNavigator extends HookWidget {
  const TabNavigator({
    Key? key,
    required this.navigatorKey,
    required this.page,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (context) {
            return page;
          },
        );
      },
    );
  }
}
