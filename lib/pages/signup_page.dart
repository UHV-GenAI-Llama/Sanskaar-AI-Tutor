import 'package:flutter/material.dart';
import 'package:uhv_project/constants/size.dart';
import 'package:uhv_project/widgets/home/mobile/signup_mob.dart';
import 'package:uhv_project/widgets/home/web/signup_web.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = constraints.maxWidth >= minDesktopWidth;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xFF001120),
          body: isDesktop ? const SignupWeb() : const SignupMob(),
        );
      },
    );
  }
}
