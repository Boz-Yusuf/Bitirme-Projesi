import 'dart:developer';
// import 'dart:ffi';

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    final double top = coverHeight - profileHeight / 2;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildHeader(),
          buildContext(),
        ],
      ),
    );
  }

  Widget buildTop() {
    final double top = coverHeight - profileHeight / 2;
    final double bottom = profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(top: top, child: buildAvatarImage()),
      ],
    );
  }

  Widget buildContext() {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            const Text(
              'ABOUT',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Yavuz Hilmi Çetin (25 Eylül 1970, Samsun - 15 Ağustos 2001, İstanbul), Türk müzisyen ve gitaristtir. Müzik hayatı boyunca 2 adet albüm çıkarmıştır.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Albums',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Satılık",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "İlk",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Music Experiences',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Blue Blues Band",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16)
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      child: Column(
        children: const [
          SizedBox(
            height: 24,
          ),
          Text(
            'Yavuz Çetin',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Musician',
            style: TextStyle(fontSize: 20, letterSpacing: 1.5),
          ),
          SizedBox(
            height: 8,
          ),
          Text('256 connection'),
          Divider(
            color: (Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://images.unsplash.com/photo-1615661434109-739052a73003?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG11c2NpYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      );

  Widget buildAvatarImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1643310873627-d4e8f21ce75a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG11c2NpYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
      );
}
