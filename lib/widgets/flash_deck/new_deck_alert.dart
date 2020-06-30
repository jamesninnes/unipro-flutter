import 'package:flutter/material.dart';

class NewDeckAlert extends StatelessWidget {
  const NewDeckAlert({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Create New Deck'),
      content: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Name',
        ),
      ),
      actions: <Widget>[Text('Cancel'), Text('Create')],
    );
  }
}
