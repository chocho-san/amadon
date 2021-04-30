import 'package:amadon/pages/drawer/drawer_title.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerTitle(),
          Text('トップ'),
          Text('カート'),
          Text('ランキング'),
        ],
      ),
    );
  }
}
