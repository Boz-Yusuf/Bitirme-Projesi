class User {
  final String userName;
  final String email;
  final String uid;
  final String role;
  final List connections;

  const User({
    required this.userName,
    required this.email,
    required this.uid,
    required this.role,
    required this.connections,
  });

  Map<String, dynamic> toJson() => {
        "username": userName,
        "email": email,
        "uid": uid,
        "role": role,
        "connections": connections
      };
}
