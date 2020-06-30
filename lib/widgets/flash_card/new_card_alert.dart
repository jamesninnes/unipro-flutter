import 'package:flutter/material.dart';

class NewCardAlert extends StatelessWidget {
  const NewCardAlert({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Create New Card'),
      content: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Question',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Answer',
            ),
          ),
        ],
      ),
      actions: <Widget>[Text('Cancel'), Text('Create')],
    );
  }
}
