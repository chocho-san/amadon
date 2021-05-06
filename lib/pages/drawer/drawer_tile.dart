import 'package:amadon/model/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DrawerTile extends HookWidget {
  const DrawerTile(this.page, this.title);

  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    final pageNotifier = useProvider(pageProvider.notifier);
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        pageNotifier.pageTrip(context, page);
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
