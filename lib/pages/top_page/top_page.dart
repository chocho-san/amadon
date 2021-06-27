// import 'package:amadon/page_type.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
// final currentPageProvider = StateProvider<PageType>((ref) => PageType.top);
//
// final navigatorKeyProvider =
//     StateProvider((ref) => GlobalKey<NavigatorState>());
//
// class PageRouter extends HookWidget {
//   const PageRouter({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final navigatorKey = useProvider(navigatorKeyProvider);
//     return Navigator(
//       key: navigatorKey.state,
//       onGenerateRoute: (settings) {
//         return MaterialPageRoute<void>(
//           settings: settings,
//           builder: (context) {
//             return const  TopPage();
//           },
//         );
//       },
//     );
//   }
// }
//
//
// class TopPage extends HookWidget {
//   const TopPage({Key? key}) : super(key: key);
//
//   static Route<void> route() {
//     return MaterialPageRoute(
//       // settings: RouteSettings(name: pageName[PageType.top]),
//       builder: (context) => const TopPage(),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SvgPicture.asset('assets/svgs/shopping.svg'),
//     );
//   }
// }

import 'package:amadon/logger.dart';
import 'package:amadon/page_type.dart';
import 'package:amadon/pages/search_history_page/search_history_page.dart';
import 'package:amadon/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopNavigator extends HookWidget {
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

class TopPage extends HookWidget {
  const TopPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      // settings: RouteSettings(name: pageName[PageType.top]),
      builder: (context) => const TopPage(),
    );
  }

  static const String url = 'assets/svgs/shopping.svg';

  @override
  Widget build(BuildContext context) {
    // final isFocused = useProvider(focusProvider);

    logger.info('build トップページ');
    return Scaffold(
      appBar: const CommonAppBar(),
      body: Center(child: SvgPicture.asset(url)),
    );
  }
}
