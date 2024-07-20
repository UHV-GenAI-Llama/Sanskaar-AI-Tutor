import 'package:flutter/material.dart';

class HealthMentorScreenWeb extends StatefulWidget {
  const HealthMentorScreenWeb({super.key});

  @override
  State<HealthMentorScreenWeb> createState() => _HealthMentorScreenWebState();
}

class _HealthMentorScreenWebState extends State<HealthMentorScreenWeb> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Health Mentor",
      style: TextStyle(color: Colors.white),
    ));
  }
}
