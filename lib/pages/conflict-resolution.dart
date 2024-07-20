import 'package:flutter/material.dart';
import 'package:uhv_project/constants/size.dart';
import 'package:uhv_project/widgets/conflict-resolution/mobile/conf_chatscreen_mob.dart';
import 'package:uhv_project/widgets/home/web/navbar.dart';
import 'package:uhv_project/widgets/conflict-resolution/web/conf_chatscreen_web.dart';
import 'package:uhv_project/widgets/home/mobile/drawer_mob.dart';
import 'package:uhv_project/widgets/home/mobile/navbar_mob.dart';

class ConflictResolutionPage extends StatefulWidget {
  const ConflictResolutionPage({super.key});

  @override
  State<ConflictResolutionPage> createState() => _ConflictResolutionPageState();
}

class _ConflictResolutionPageState extends State<ConflictResolutionPage> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = constraints.maxWidth >= minDesktopWidth;
        return Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFF001120),
            appBar: isDesktop
                ? const Navbar()
                : NavbarMob(
                    onMenuTap: () {
                      // This will open right side drawer
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
            endDrawer: isDesktop ? null : const DrawerMob(),
            body: isDesktop
                ? const ConfChatScreenWeb()
                : const ConfChatScreenMob());
      },
    );
  }
}
