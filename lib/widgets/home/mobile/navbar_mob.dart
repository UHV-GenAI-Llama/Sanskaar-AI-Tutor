import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavbarMob extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onMenuTap;

  const NavbarMob({super.key, required this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        shape: const Border(
            bottom: BorderSide(color: Color(0xffD0D0D0), width: 1)),
        centerTitle: false,
        backgroundColor: const Color(0xFF001120),
        title: Container(
            margin: const EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: TextButton(
                onPressed: () => {context.go('/')},
                style: ButtonStyle(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                ),
                child: Row(children: [
                  Image.asset(
                    "assets/images/EcoResolve-logo.png",
                    height: 30,
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    'UHV',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff2EC4D8),
                        fontWeight: FontWeight.w700),
                  )
                ]))),
        actions: [
          IconButton(
            onPressed: onMenuTap,
            color: const Color(0xffA6FAFF),
            icon: const Icon(Icons.menu),
          ),
          const SizedBox(width: 5)
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
