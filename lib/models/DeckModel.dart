import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unipro/widgets/flash_card/flash_card.dart';

class FlashDeck {
  final String id;
  final String name;
  final List<FlashCard> flashCards;

  FlashDeck({this.id, this.name, this.flashCards});

  factory FlashDeck.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data;

    print(doc.data);

    // TODO Typecheck these as well
    return FlashDeck(
      id: doc.documentID,
      name: data['name'] ?? '',
      flashCards: data['flashCards'] ?? [],
    );
  }
}
