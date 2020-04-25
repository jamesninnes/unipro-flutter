import 'package:flutter/material.dart';
import 'package:unipro/widgets/call_to_action/call_to_action.dart';
import 'package:unipro/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction('Sign up'),
          ),
        )
      ],
    );
  }
}
