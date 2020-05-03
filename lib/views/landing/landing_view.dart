import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unipro/constants/app_colors.dart';
import 'package:unipro/widgets/admin_cards/edit_deck.dart';
import 'package:unipro/widgets/admin_cards/new_deck.dart';
import 'package:unipro/widgets/admin_cards/print_deck.dart';
import 'package:unipro/widgets/flash_deck/flash_deck.dart';
import 'package:unipro/widgets/navigation_drawer/navigation_drawer.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
              appBar: AppBar(
                backgroundColor: primaryColor,
                title: Text("UNIPRO"),
                actions: <Widget>[Icon(Icons.person_outline)],
              ),
              drawer: NavigationDrawer(),
              backgroundColor: Colors.white,
              body: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Wrap(
                          children: <Widget>[
                            FlashDeck(
                              title: "3011",
                              icon: Icons.local_hospital,
                            ),
                            FlashDeck(
                              title: "3010",
                              icon: Icons.local_hospital,
                            ),
                            FlashDeck(
                              title: "2012",
                              icon: Icons.local_hospital,
                            ),
                            FlashDeck(
                              title: "3041",
                              icon: Icons.local_hospital,
                            ),
                            NewFlashDeck(),
                            EditFlashDeck(),
                            PrintFlashDeck()
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
            ));
  }
}
