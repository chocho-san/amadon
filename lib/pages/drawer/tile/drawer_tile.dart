import 'package:amadon/model/controllers/controllers.dart';
import 'package:amadon/pages/top_page/top_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DrawerTile extends HookWidget {
  const DrawerTile({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context,rootNavigator: true).pop();
        onTap();
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            const SizedBox(width: 50),
            Text(title),
          ],
        ),
      ),
    );
  }
}
// import 'package:amadon/model/controllers/controllers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
// class DrawerTile extends HookWidget {
//   const DrawerTile({
//     Key? key,
//     required this.page,
//     required this.title,
//   }) : super(key: key);
//   final String title;
//   final int page;
//
//   @override
//   Widget build(BuildContext context) {
//     final pageNotifier = useProvider(pageProvider.notifier);
//     return InkWell(
//       onTap: () {
//         Navigator.pop(context);
//         pageNotifier.pageTrip(context, page);
//       },
//       child: SizedBox(
//         height: 60,
//         child: Row(
//           children: [
//             const SizedBox(width: 50),
//             Text(title),
//           ],
//         ),
//       ),
//     );
//   }
// }
