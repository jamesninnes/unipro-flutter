import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unipro/widgets/flash_card/flash_card.dart';

class FlashCard {
  final String id;
  final String question;
  final String answer;

  FlashCard({this.id, this.question, this.answer});

  factory FlashCard.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data;

    print(doc.data);

    // TODO Typecheck these as well
    return FlashCard(
      id: doc.documentID,
      question: data['question'] ?? '',
      answer: data['answer'] ?? [],
    );
  }
}
