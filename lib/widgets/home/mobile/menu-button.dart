import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:uhv_project/constants/colors.dart';
import 'package:go_router/go_router.dart';

class MenuButton extends StatefulWidget {
  final String title;
  final String path;
  final IconData icon;

  MenuButton({required this.title, required this.path, required this.icon});

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  @override
  void initState() {
    analytics.setAnalyticsCollectionEnabled(true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isActive =
        GoRouter.of(context).routeInformationProvider.value.uri.toString() ==
            widget.path;

    return ListTile(
      onTap: () {
        analytics.logEvent(
                  name: "pages_tracked",
                  parameters: {"page_name": widget.title});
        context.go(widget.path);
      },
      iconColor: isActive ? const Color(0xffA6FAFF) : CustomColor.lightGrey,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      leading: Icon(widget.icon),
      title: Text(widget.title),
      titleTextStyle: TextStyle(
        color: isActive ? const Color(0xffA6FAFF) : CustomColor.lightGrey,
        fontSize: 15,
      ),
    );
  }
}
