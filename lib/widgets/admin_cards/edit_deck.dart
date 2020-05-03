import 'package:flutter/material.dart';
import 'package:unipro/widgets/admin_cards/admin_card.dart';

class EditFlashDeck extends StatelessWidget {
  const EditFlashDeck({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AdminCard(
        title: "Edit",
        icon: Icons.edit,
      ),
    );
  }
}
