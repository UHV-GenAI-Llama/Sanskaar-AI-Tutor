import 'package:flutter/material.dart';
import 'package:uhv_project/constants/size.dart';
import 'package:uhv_project/widgets/home/web/navbar.dart';
import 'package:uhv_project/widgets/home/mobile/drawer_mob.dart';
import 'package:uhv_project/widgets/home/mobile/navbar_mob.dart';
import 'package:uhv_project/widgets/preppal/examprep.dart';
import 'package:uhv_project/widgets/preppal/fitness.dart';
import 'package:uhv_project/widgets/preppal/nutrition.dart';
import 'package:uhv_project/widgets/preppal/stress.dart';

class PrepPalPage extends StatefulWidget {
  const PrepPalPage({super.key});

  @override
  State<PrepPalPage> createState() => _PrepPalPageState();
}

class _PrepPalPageState extends State<PrepPalPage> {
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
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                color: const Color(0xFF001120),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/profile.jpeg',
                            height: 60, width: 60),
                        const SizedBox(width: 10),
                        const Text('Student',
                            style:
                                TextStyle(fontSize: 30, color: Colors.white)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(width: 1, color: Colors.white),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 250,
                            height: 160,
                            margin: const EdgeInsets.only(top: 25),
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/chat.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text('Chat with PrepPal',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(width: 1, color: Colors.white),
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Topics',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            padding: const EdgeInsets.all(10),
                            children: [
                              _buildTopicCard(
                                  context,
                                  '/preppal/exam',
                                  'assets/images/exam.jpeg',
                                  'Exam',
                                  'Preparation'),
                              _buildTopicCard(
                                  context,
                                  '/preppal/stress',
                                  'assets/images/stress.jpeg',
                                  'Stress',
                                  'Management'),
                              _buildTopicCard(context, '/preppal/fitness',
                                  'assets/images/fitness.jpeg', 'Fitness', ''),
                              _buildTopicCard(
                                  context,
                                  '/preppal/nutrition',
                                  'assets/images/nutrition.jpeg',
                                  'Nutrition',
                                  ''),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTopicCard(BuildContext context, String route, String imagePath,
      String title, String subtitle) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => _PageBuilder(route),
          ),
        );
      },
      child: Column(
        children: [
          Image.asset(imagePath, width: 80, height: 80),
          Text(title,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
          if (subtitle.isNotEmpty)
            Text(subtitle,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _PageBuilder(String route) {
    switch (route) {
      case "/preppal/exam":
        return ExamPrep();
      case "/preppal/nutrition":
        return Nutrition();
      case "/preppal/fitness":
        return Fitness();
      case "/preppal/stress":
        return Stress();
      default:
        return Container();
    }
  }
}
