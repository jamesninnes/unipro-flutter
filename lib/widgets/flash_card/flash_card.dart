import 'package:auto_size_text/auto_size_text.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:unipro/constants/app_colors.dart';
import 'package:unipro/constants/card_dimensions.dart';

class FlashCard extends StatelessWidget {
  final String question;
  final String answer;
  const FlashCard({Key key, this.question, this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      front: Card(
        elevation: 4,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Container(
          width: cardWidth,
          height: cardHeight,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: AutoSizeText(
              question,
              textAlign: TextAlign.center,
              style: TextStyle(color: primaryColor),
            ),
          ),
        ),
      ),
      back: Card(
        elevation: 4,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Container(
          width: cardWidth,
          height: cardHeight,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: AutoSizeText(
              answer,
              textAlign: TextAlign.center,
              style: TextStyle(color: primaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
