import 'package:amadon/logger.dart';
import 'package:amadon/tab_type.dart';
import 'package:amadon/pages/app_bar/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopNavigator extends StatelessWidget {
  const TopNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: TabType.top.globalKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (context) {
            return const TopPage();
          },
        );
      },
    );
  }
}

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const TopPage(),
    );
  }

  static const String url = 'assets/svgs/shopping.svg';

  @override
  Widget build(BuildContext context) {
    logger.info('build トップページ');
    return Scaffold(
      appBar: const CommonAppBar(),
      body: Center(child: SvgPicture.asset(url)),
    );
  }
}
