import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class NavButton extends StatefulWidget {
  final String text;
  final String routeName;

  NavButton({required this.text, required this.routeName});

  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool _isHovering = false;
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
            widget.routeName;

    return MouseRegion(
        onEnter: (_) => _onHover(true),
        onExit: (_) => _onHover(false),
        child: Container(
          margin: const EdgeInsets.fromLTRB(12, 20, 12, 0),
          child: TextButton(
            onPressed: () {
              analytics.logEvent(
                  name: "pages_tracked",
                  parameters: {"page_name": widget.text});
              context.go(widget.routeName);
            },
            child: Text(
              widget.text,
              style: TextStyle(
                  color: _isHovering || isActive
                      ? const Color(0xffA6FAFF)
                      : const Color(0xffC3C3C3),
                  fontSize: 16),
            ),
          ),
        ));
  }

  void _onHover(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }
}
