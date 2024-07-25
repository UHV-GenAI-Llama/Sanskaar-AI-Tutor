import 'package:flutter/material.dart';
import 'package:uhv_project/constants/size.dart';
import 'package:uhv_project/widgets/home/mobile/login_mob.dart';
import 'package:uhv_project/widgets/home/web/login_web.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = constraints.maxWidth >= minDesktopWidth;
        return Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFF001120),
            body: isDesktop ? const LoginWeb() : const LoginMob());
      },
    );
  }
}
