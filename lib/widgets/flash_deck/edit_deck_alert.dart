import 'package:flutter/material.dart';

class EditDeckAlert extends StatelessWidget {
  const EditDeckAlert({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Update Deck'),
      content: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Name',
        ),
      ),
      actions: <Widget>[Text('Cancel'), Text('Update')],
    );
  }
}
