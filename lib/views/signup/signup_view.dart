import 'package:flutter/material.dart';
import 'package:unipro/widgets/centered_view/centered_view.dart';

class SignupView extends StatefulWidget {
  static const String route = '/signup';
  SignupView({Key key}) : super(key: key);

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Text('Signup'),
    );
  }
}
