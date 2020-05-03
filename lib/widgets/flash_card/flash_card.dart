import 'package:flutter/material.dart';
import 'package:unipro/constants/app_colors.dart';

class FlashCard extends StatelessWidget {
  final String question;
  const FlashCard({Key key, this.question}) : super(key: key);

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
                Text(
                  question,
                  style: TextStyle(color: primaryColor, fontSize: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
