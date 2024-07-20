import 'package:flutter/material.dart';
import 'package:uhv_project/constants/size.dart';
import 'package:uhv_project/widgets/home/web/navbar.dart';
import 'package:uhv_project/widgets/home/mobile/drawer_mob.dart';
import 'package:uhv_project/widgets/home/mobile/navbar_mob.dart';
import 'package:uhv_project/widgets/moral-mentor/mobile/moral-mentor-mob.dart';
import 'package:uhv_project/widgets/moral-mentor/web/moral-mentor-web.dart';

class MoralMentorPage extends StatefulWidget {
  const MoralMentorPage({super.key});

  @override
  State<MoralMentorPage> createState() => _MoralMentorPageState();
}

class _MoralMentorPageState extends State<MoralMentorPage> {
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
                ? const MoralMentorScreenWeb()
                : const MoralMentorScreenMob());
      },
    );
  }
}
