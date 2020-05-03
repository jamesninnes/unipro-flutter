import 'package:flutter/material.dart';
import 'package:unipro/constants/app_colors.dart';

class AdminCard extends StatelessWidget {
  final String title;
  final IconData icon;
  const AdminCard({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: InkWell(
        splashColor: primaryColor.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          width: 250,
          height: 200,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: 100,
                  color: Colors.grey[300],
                ),
                Text(
                  title,
                  style: TextStyle(color: primaryColor, fontSize: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
