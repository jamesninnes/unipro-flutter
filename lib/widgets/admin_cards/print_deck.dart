import 'package:flutter/material.dart';
import 'package:unipro/widgets/admin_cards/admin_card.dart';

class PrintFlashDeck extends StatelessWidget {
  const PrintFlashDeck({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AdminCard(
        title: "Print",
        icon: Icons.print,
      ),
    );
  }
}
