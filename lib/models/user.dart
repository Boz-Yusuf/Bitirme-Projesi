import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String username;
  final String email;
  final String uid;
  final String role;
  final List connections;

  const User({
    required this.username,
    required this.email,
    required this.uid,
    required this.role,
    required this.connections,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "uid": uid,
        "role": role,
        "connections": connections
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
        username: snapshot['username'],
        email: snapshot['email'],
        uid: snapshot['uid'],
        role: snapshot['role'],
        connections: snapshot['connections']);
  }
}
