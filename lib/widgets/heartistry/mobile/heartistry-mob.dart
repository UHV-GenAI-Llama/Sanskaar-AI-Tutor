import 'package:flutter/material.dart';

class HeartistryScreenMob extends StatefulWidget {
  const HeartistryScreenMob({super.key});

  @override
  State<HeartistryScreenMob> createState() => _HeartistryScreenMobState();
}

class _HeartistryScreenMobState extends State<HeartistryScreenMob> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Heartistry",
      style: TextStyle(color: Colors.white),
    ));
  }
}
