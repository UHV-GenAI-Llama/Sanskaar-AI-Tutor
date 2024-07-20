import 'package:flutter/material.dart';

class RightsQuestScreenMob extends StatefulWidget {
  const RightsQuestScreenMob({super.key});

  @override
  State<RightsQuestScreenMob> createState() => _RightsQuestScreenMobState();
}

class _RightsQuestScreenMobState extends State<RightsQuestScreenMob> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "RightsQuest",
      style: TextStyle(color: Colors.white),
    ));
  }
}
