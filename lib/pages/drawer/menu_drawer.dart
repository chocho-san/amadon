import 'package:amadon/pages/drawer/drawer_header_tile.dart';
import 'package:amadon/pages/drawer/drawer_tile.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeaderTile(),
          DrawerTile(0, 'トップ'),
          DrawerTile(2, 'カート'),
          DrawerTile(4, 'ランキング'),
        ],
      ),
    );
  }
}
