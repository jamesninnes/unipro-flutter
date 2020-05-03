import 'package:flutter/material.dart';
import 'package:unipro/widgets/admin_cards/admin_card.dart';

class NewFlashDeck extends StatelessWidget {
  const NewFlashDeck({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AdminCard(
        title: "New",
        icon: Icons.add,
      ),
    );
  }
}
