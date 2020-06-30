import 'package:flutter/material.dart';

class DeleteCardAlert extends StatelessWidget {
  const DeleteCardAlert({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Delete Card?'),
      actions: <Widget>[Text('Cancel'), Text('Delete')],
    );
  }
}
