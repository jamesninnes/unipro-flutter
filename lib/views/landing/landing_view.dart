import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unipro/widgets/centered_view/centered_view.dart';
import 'package:unipro/widgets/navigation_bar/navigation_bar.dart';
import 'package:unipro/widgets/navigation_drawer/navigation_drawer.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              // Expanded(
              //   child: ScreenTypeLayout(
              //   mobile: LandingContentMobile(),
              //   desktop: LandingContentDesktop(),
              // ))
            ],
          ),
        ),
      ),
    );
  }
}
