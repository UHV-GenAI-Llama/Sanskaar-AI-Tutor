import 'package:flutter/material.dart';

class MoralMentorScreenWeb extends StatefulWidget {
  const MoralMentorScreenWeb({super.key});

  @override
  State<MoralMentorScreenWeb> createState() => _MoralMentorScreenWebState();
}

class _MoralMentorScreenWebState extends State<MoralMentorScreenWeb> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Moral Mentor",
      style: TextStyle(color: Colors.white),
    ));
  }
}
