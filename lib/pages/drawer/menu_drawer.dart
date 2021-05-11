import 'package:amadon/pages/drawer/tile/drawer_header_tile.dart';
import 'package:amadon/pages/drawer/tile/drawer_tile.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeaderTile(),
          const DrawerTile(0, 'トップ'),
          const DrawerTile(2, 'カート'),
          const DrawerTile(4, 'ランキング'),
        ],
      ),
    );
  }
}
