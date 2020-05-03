import 'package:flutter/material.dart';

import 'navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('File'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Games'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Flash Cards'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Views'),
            ],
          ),
          IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
