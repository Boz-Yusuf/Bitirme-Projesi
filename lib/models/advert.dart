import 'package:cloud_firestore/cloud_firestore.dart';

class Advert {
  final String title;
  final String description;
  final String uid;
  final String username;
  final applies;
  final String advertId;
  final DateTime datePublished;

  const Advert({
    required this.title,
    required this.description,
    required this.uid,
    required this.username,
    required this.applies,
    required this.advertId,
    required this.datePublished,
  });

  static Advert fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Advert(
      title: snapshot["title"],
      description: snapshot["description"],
      uid: snapshot["uid"],
      applies: snapshot["applies"],
      advertId: snapshot["advertId"],
      datePublished: snapshot["datePublished"],
      username: snapshot["username"],
    );
  }

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "uid": uid,
        "applies": applies,
        "username": username,
        "advertId": advertId,
        "datePublished": datePublished,
      };
}
