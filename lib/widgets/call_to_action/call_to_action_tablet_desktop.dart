import 'package:flutter/material.dart';
import 'package:unipro/constants/app_colors.dart';
import 'package:unipro/views/login/login_view.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;
  const CallToActionTabletDesktop(this.title);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () => {Navigator.of(context).pushNamed(LoginView.route)},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
        ));
  }
}
