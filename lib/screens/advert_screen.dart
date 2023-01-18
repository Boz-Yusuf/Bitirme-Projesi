import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myband_flutter/widgets/advert_card.dart';

class AdvertScreen extends StatefulWidget {
  const AdvertScreen({super.key});

  @override
  State<AdvertScreen> createState() => _AdvertScreenState();
}

class _AdvertScreenState extends State<AdvertScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: AdvertCard(),
        ),
      ),
    );
  }
}
