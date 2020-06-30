import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:unipro/constants/app_colors.dart';
import 'package:unipro/widgets/flash_card/flash_card.dart';
import 'package:unipro/widgets/flash_deck/delete_deck_alert.dart';
import 'package:unipro/widgets/flash_deck/edit_deck_alert.dart';

class FlashDeckView extends StatelessWidget {
  static const String route = '/deck';
  final String deckId;
  const FlashDeckView({Key key, this.deckId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: primaryColor,
        title: Text("UNIPRO"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () => {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return EditDeckAlert();
                        })
                  }),
          IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return DeleteDeckAlert();
                        })
                  }),
        ],
      ),
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
                .document(deckId)
                .collection('cards')
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
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
                          return new FlashCard(
                            question: document['question'],
                            answer: document['answer'],
                          );
                        }).toList(),
                      )
                    ],
                  );
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.print),
          backgroundColor: primaryColor,
          onPressed: () => {}),
    );
  }
}
