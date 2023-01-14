import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String username;
  final String email;
  final String uid;
  final String role;
  final String photoUrl;
  final List connections;

  const User({
    required this.username,
    required this.email,
    required this.uid,
    required this.role,
    required this.photoUrl,
    required this.connections,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "uid": uid,
        "role": role,
        "photoUrl": photoUrl,
        "connections": connections
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
        username: snapshot['username'],
        email: snapshot['email'],
        uid: snapshot['uid'],
        role: snapshot['role'],
        photoUrl: snapshot["photoUrl"],
        connections: snapshot['connections']);
  }
}
