import 'package:flutter/material.dart';

class HealthMentorScreenMob extends StatefulWidget {
  const HealthMentorScreenMob({super.key});

  @override
  State<HealthMentorScreenMob> createState() => _HealthMentorScreenMobState();
}

class _HealthMentorScreenMobState extends State<HealthMentorScreenMob> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Health Mentor",
      style: TextStyle(color: Colors.white),
    ));
  }
}
