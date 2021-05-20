import 'package:amadon/pages/drawer/tile/drawer_header_tile.dart';
import 'package:amadon/pages/drawer/tile/drawer_tile.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
           DrawerHeaderTile(),
           DrawerTile(page:0, title:'トップ'),
           DrawerTile(page:2, title:'カート'),
           Divider(),
        ],
      ),
    );
  }
}
