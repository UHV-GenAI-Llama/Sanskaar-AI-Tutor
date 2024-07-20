import 'package:flutter/material.dart';

class HeartistryScreenWeb extends StatefulWidget {
  const HeartistryScreenWeb({super.key});

  @override
  State<HeartistryScreenWeb> createState() => _HeartistryScreenWebState();
}

class _HeartistryScreenWebState extends State<HeartistryScreenWeb> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Heartistry",
      style: TextStyle(color: Colors.white),
    ));
  }
}
