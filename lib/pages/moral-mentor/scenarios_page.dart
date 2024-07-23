import 'package:flutter/material.dart';
import 'package:uhv_project/constants/size.dart';
import 'package:uhv_project/widgets/home/mobile/drawer_mob.dart';
import 'package:uhv_project/widgets/home/mobile/navbar_mob.dart';
import 'package:uhv_project/widgets/home/web/navbar.dart';
import 'quiz_page.dart';

class ScenariosPage extends StatelessWidget {
  final List<String> themes = [
    'Loyalty',
    'Honesty',
    'Cheating',
    'Personal Values',
    'Alcoholism',
    'Misconduct',
    'Fairness',
    'Responsibility',
    'Friendship',
    'Plagiarism',
    'Truthfulness',
    'Disappointment',
    'Appropriate Touch',
    'The Impact of Words',
    'Keeping Children Out of Adult Issues',
    'Setting Boundaries',
    'Bullying',
    'Making Choices',
    'Challenging Authority',
    'Expectations from Parents and Society',
    'Integrity',
    'Equality',
    'Relationships',
    'Forgiveness and Rumors'
  ];

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return LayoutBuilder(builder: (context, constraints) {
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount;
              if (constraints.maxWidth >= 1200) {
                // Web view
                crossAxisCount = 4;
              } else if (constraints.maxWidth >= 800) {
                // Tablet view
                crossAxisCount = 3;
              } else {
                // Mobile view
                crossAxisCount = 2;
              }

              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 3, // Adjust the aspect ratio as needed
                ),
                itemCount: themes.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 30.0), // Increased button padding
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10.0), // Rounded corners
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    QuizPage(theme: themes[index])),
                          );
                        },
                        child: Text(
                          themes[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      );
    });
  }
}
