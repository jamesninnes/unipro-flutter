import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unipro/constants/app_colors.dart';
import 'package:unipro/views/login/login_view.dart';
import 'package:unipro/widgets/flash_deck/flash_deck.dart';
import 'package:unipro/widgets/flash_deck/new_deck_alert.dart';
import 'package:unipro/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GalleryView extends StatelessWidget {
  static const String route = '/gallery';
  const GalleryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text("UNIPRO"),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'Sign Out',
                style: TextStyle(color: Colors.white),
              ),
              color: primaryColor,
              onPressed: () {
                _auth.signOut();
                Navigator.of(context).pushNamed(LoginView.route);
              },
            )
          ],
        ),
        drawer: NavigationDrawer(),
        backgroundColor: Colors.white,
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: StreamBuilder(
                stream: Firestore.instance
                    .collection('users')
                    .document('YuJSBZcul9OSxUWmaujM3FHyIsQ2')
                    .collection('decks')
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError)
                    return new Text('Error: ${snapshot.error}');
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return new Text('Loading...');
                    default:
                      return Column(
                        children: <Widget>[
                          Wrap(
                            children: snapshot.data.documents
                                .map((DocumentSnapshot document) {
                              print(document.documentID);
                              return new FlashDeck(
                                title: document['name'],
                                deckId: document.documentID,
                              );
                            }).toList(),
                          )
                        ],
                      );
                  }
                },
              ),
            )),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: primaryColor,
            onPressed: () => {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return NewDeckAlert();
                      })
                }));
  }
}
