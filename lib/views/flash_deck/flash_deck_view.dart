import 'package:flutter/material.dart';
import 'package:unipro/constants/app_colors.dart';
import 'package:unipro/widgets/flash_card/flash_card.dart';
import 'package:unipro/widgets/navigation_drawer/navigation_drawer.dart';

class FlashDeckView extends StatelessWidget {
  const FlashDeckView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("UNIPRO"),
        actions: <Widget>[Icon(Icons.person_outline)],
      ),
      drawer: NavigationDrawer(),
      backgroundColor: Colors.white,
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Wrap(
                  children: <Widget>[
                    FlashCard(
                      question: "Anticoagulants use hypertension?",
                    ),
                  ],
                )
                // Expanded(
                //     child: ScreenTypeLayout(
                //   mobile: LandingContentMobile(),
                //   desktop: LandingContentDesktop(),
                // ))
              ],
            ),
          )),
    );
  }
}
