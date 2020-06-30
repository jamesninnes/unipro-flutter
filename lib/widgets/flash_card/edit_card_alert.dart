import 'package:flutter/material.dart';

class EditCardAlert extends StatelessWidget {
  const EditCardAlert({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Update Card'),
      content: SingleChildScrollView(
          child: Column(
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
      )),
      actions: <Widget>[Text('Cancel'), Text('Update')],
    );
  }
}
