import 'package:flutter/material.dart';
import 'package:unipro/widgets/navigation_drawer/drawer_item.dart';
import 'package:unipro/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('File', Icons.text_fields),
          DrawerItem('Game', Icons.games),
          DrawerItem('Flashcard', Icons.lightbulb_outline),
          DrawerItem('Views', Icons.looks),
        ],
      ),
    );
  }
}
