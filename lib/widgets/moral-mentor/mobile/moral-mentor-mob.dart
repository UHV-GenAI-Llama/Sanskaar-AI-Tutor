import 'package:flutter/material.dart';

class MoralMentorScreenMob extends StatefulWidget {
  const MoralMentorScreenMob({super.key});

  @override
  State<MoralMentorScreenMob> createState() => _MoralMentorScreenMobState();
}

class _MoralMentorScreenMobState extends State<MoralMentorScreenMob> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Moral Mentor",
      style: TextStyle(color: Colors.white),
    ));
  }
}
