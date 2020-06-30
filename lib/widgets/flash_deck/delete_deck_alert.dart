import 'package:flutter/material.dart';

class DeleteDeckAlert extends StatelessWidget {
  const DeleteDeckAlert({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Delete Deck?'),
      actions: <Widget>[Text('Cancel'), Text('Delete')],
    );
  }
}
