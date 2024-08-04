import 'package:flutter/material.dart';
import 'package:uhv_project/widgets/home/web/nav-button.dart';
import 'package:uhv_project/constants/nav_items.dart';
import 'package:go_router/go_router.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape:
          const Border(bottom: BorderSide(color: Color(0xffD0D0D0), width: 1)),
      centerTitle: false,
      backgroundColor: const Color(0xFF001120),
      title: Container(
          margin: const EdgeInsets.fromLTRB(20, 15, 15, 0),
          child: TextButton(
              onPressed: () => {context.go('/')},
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
              ),
              child: Row(children: [
                Image.asset(
                  "assets/images/EcoResolve-logo.png",
                  height: 40,
                ),
                const SizedBox(width: 8),
                const Text(
                  'Sanskaar AI Tutor',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff2EC4D8),
                      fontWeight: FontWeight.w700),
                )
              ]))),
      actions: [
        for (int i = 0; i < navTitles.length; i++)
          (NavButton(
            text: navTitles[i],
            routeName: navPaths[i],
          )),
        const SizedBox(width: 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}
