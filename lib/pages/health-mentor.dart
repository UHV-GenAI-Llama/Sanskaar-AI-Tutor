import 'package:flutter/material.dart';
import 'package:uhv_project/constants/size.dart';
import 'package:uhv_project/widgets/health-mentor/mobile/health-mentor-mob.dart';
import 'package:uhv_project/widgets/health-mentor/web/health-mentor-web.dart';
import 'package:uhv_project/widgets/home/web/navbar.dart';
import 'package:uhv_project/widgets/home/mobile/drawer_mob.dart';
import 'package:uhv_project/widgets/home/mobile/navbar_mob.dart';

class HealthMentorPage extends StatefulWidget {
  const HealthMentorPage({super.key});

  @override
  State<HealthMentorPage> createState() => _HealthMentorPageState();
}

class _HealthMentorPageState extends State<HealthMentorPage> {
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
                ? const HealthMentorScreenWeb()
                : const HealthMentorScreenMob());
      },
    );
  }
}
