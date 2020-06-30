import 'package:flutter/material.dart';
import 'package:unipro/constants/app_colors.dart';
import 'package:unipro/constants/card_dimensions.dart';
import 'package:unipro/views/flash_deck/flash_deck_view.dart';

class FlashDeck extends StatelessWidget {
  final String title;
  final IconData icon;
  final String deckId;
  const FlashDeck({Key key, this.title, this.icon, this.deckId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxDecoration decoration = BoxDecoration();
    return Stack(alignment: Alignment.topLeft, children: <Widget>[
      Card(
        elevation: 4,
        margin: EdgeInsets.symmetric(vertical: 9, horizontal: 9),
        child: Container(
          decoration: decoration,
          width: cardWidth,
          height: cardHeight,
        ),
      ),
      Card(
        elevation: 3,
        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
        child: Container(
          decoration: decoration,
          width: cardWidth,
          height: cardHeight,
        ),
      ),
      Card(
        elevation: 2,
        margin: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
        child: InkWell(
          splashColor: primaryColor.withAlpha(30),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FlashDeckView(deckId: deckId)));
          },
          child: Container(
            decoration: decoration,
            width: cardWidth,
            height: cardHeight,
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
      ),
    ]);
  }
}
