import 'package:flutter/material.dart';
import 'package:uhv_project/constants/size.dart';
import 'package:uhv_project/widgets/home/web/section.dart';
import 'package:uhv_project/widgets/home/web/navbar.dart';
import 'package:uhv_project/widgets/home/mobile/drawer_mob.dart';
import 'package:uhv_project/widgets/home/mobile/navbar_mob.dart';
import 'package:uhv_project/widgets/home/mobile/section_mob.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: isDesktop
                    ? [
                        Section(
                          title: 'Moral Mentor',
                          description:
                              'At our Conflict Resolution Hub, we believe that every conflict holds an opportunity for growth and understanding. Our mission is to provide you with the tools and resources you need to navigate and resolve conflicts effectively. Whether you’re dealing with interpersonal issues, workplace disagreements, or community disputes, our platform offers comprehensive guides, expert advice, and practical strategies to help you achieve peaceful resolutions.',
                          buttonText: 'Moral Mentor',
                          onPressed: () {
                            context.go('/moral-mentor');
                          },
                          imagePath: 'assets/images/community-service.png',
                        ),
                        const SizedBox(height: 60),
                        Section(
                          title: 'RightsQuest',
                          description:
                              'At our Conflict Resolution Hub, we believe that every conflict holds an opportunity for growth and understanding. Our mission is to provide you with the tools and resources you need to navigate and resolve conflicts effectively. Whether you’re dealing with interpersonal issues, workplace disagreements, or community disputes, our platform offers comprehensive guides, expert advice, and practical strategies to help you achieve peaceful resolutions.',
                          buttonText: 'RightsQuest',
                          onPressed: () {
                            context.go('/rightsquest');
                          },
                          imagePath: 'assets/images/conflict-resolution.png',
                          isImageFirst: true,
                        ),
                        const SizedBox(height: 60),
                        Section(
                          title:
                              'Community Service and Social Responsibility Platform',
                          description:
                              'We are dedicated to promoting social responsibility and community engagement. Our platform connects volunteers, organizations, and community members who share a passion for making a positive impact. Together, we can create meaningful change and build a stronger, more compassionate community.',
                          buttonText: 'Community Service',
                          onPressed: () {
                            context.go('/community-service');
                          },
                          imagePath: 'assets/images/community-service.png',
                        ),
                        const SizedBox(height: 60),
                        Section(
                          title: 'Conflict Resolution Hub',
                          description:
                              'At our Conflict Resolution Hub, we believe that every conflict holds an opportunity for growth and understanding. Our mission is to provide you with the tools and resources you need to navigate and resolve conflicts effectively. Whether you’re dealing with interpersonal issues, workplace disagreements, or community disputes, our platform offers comprehensive guides, expert advice, and practical strategies to help you achieve peaceful resolutions.',
                          buttonText: 'Conflict Resolution',
                          onPressed: () {
                            context.go('/conflict-resolution');
                          },
                          imagePath: 'assets/images/conflict-resolution.png',
                          isImageFirst: true,
                        ),
                        const SizedBox(height: 60),
                        Section(
                            title: 'Health Mentor',
                            description:
                                'We are dedicated to promoting social responsibility and community engagement. Our platform connects volunteers, organizations, and community members who share a passion for making a positive impact. Together, we can create meaningful change and build a stronger, more compassionate community.',
                            buttonText: 'Health Mentor',
                            onPressed: () {
                              context.go('/health-mentor');
                            },
                            imagePath: 'assets/images/community-service.png'),
                        const SizedBox(height: 60),
                        Section(
                            title: 'Heartistry',
                            description:
                                'We are dedicated to promoting social responsibility and community engagement. Our platform connects volunteers, organizations, and community members who share a passion for making a positive impact. Together, we can create meaningful change and build a stronger, more compassionate community.',
                            buttonText: 'Heartistry',
                            onPressed: () {
                              context.go('/heartistry');
                            },
                            imagePath: 'assets/images/conflict-resolution.png',
                            isImageFirst: true)
                      ]
                    : [
                        SectionMob(
                          title: 'Moral Mentor',
                          description:
                              'At our Conflict Resolution Hub, we believe that every conflict holds an opportunity for growth and understanding. Our mission is to provide you with the tools and resources you need to navigate and resolve conflicts effectively. Whether you’re dealing with interpersonal issues, workplace disagreements, or community disputes, our platform offers comprehensive guides, expert advice, and practical strategies to help you achieve peaceful resolutions.',
                          buttonText: 'Moral Mentor',
                          onPressed: () {
                            context.go('/moral-mentor');
                          },
                          imagePath: 'assets/images/community-service.png',
                        ),
                        const SizedBox(height: 80),
                        SectionMob(
                          title: 'RightsQuest',
                          description:
                              'At our Conflict Resolution Hub, we believe that every conflict holds an opportunity for growth and understanding. Our mission is to provide you with the tools and resources you need to navigate and resolve conflicts effectively. Whether you’re dealing with interpersonal issues, workplace disagreements, or community disputes, our platform offers comprehensive guides, expert advice, and practical strategies to help you achieve peaceful resolutions.',
                          buttonText: 'RightsQuest',
                          onPressed: () {
                            context.go('/rightsquest');
                          },
                          imagePath: 'assets/images/conflict-resolution.png',
                        ),
                        const SizedBox(height: 80),
                        SectionMob(
                          title:
                              'Community Service and Social Responsibility Platform',
                          description:
                              'We are dedicated to promoting social responsibility and community engagement. Our platform connects volunteers, organizations, and community members who share a passion for making a positive impact. Together, we can create meaningful change and build a stronger, more compassionate community.',
                          buttonText: 'Community Service',
                          onPressed: () {
                            context.go('/community-service');
                          },
                          imagePath: 'assets/images/community-service.png',
                        ),
                        const SizedBox(height: 80),
                        SectionMob(
                          title: 'Conflict Resolution Hub',
                          description:
                              'At our Conflict Resolution Hub, we believe that every conflict holds an opportunity for growth and understanding. Our mission is to provide you with the tools and resources you need to navigate and resolve conflicts effectively. Whether you’re dealing with interpersonal issues, workplace disagreements, or community disputes, our platform offers comprehensive guides, expert advice, and practical strategies to help you achieve peaceful resolutions.',
                          buttonText: 'Conflict Resolution',
                          onPressed: () {
                            context.go('/conflict-resolution');
                          },
                          imagePath: 'assets/images/conflict-resolution.png',
                        ),
                        const SizedBox(height: 80),
                        SectionMob(
                          title: 'Health Mentor',
                          description:
                              'We are dedicated to promoting social responsibility and community engagement. Our platform connects volunteers, organizations, and community members who share a passion for making a positive impact. Together, we can create meaningful change and build a stronger, more compassionate community.',
                          buttonText: 'Health Mentor',
                          onPressed: () {
                            context.go('/health-mentor');
                          },
                          imagePath: 'assets/images/community-service.png',
                        ),
                        const SizedBox(height: 80),
                        SectionMob(
                          title: 'Heartistry',
                          description:
                              'We are dedicated to promoting social responsibility and community engagement. Our platform connects volunteers, organizations, and community members who share a passion for making a positive impact. Together, we can create meaningful change and build a stronger, more compassionate community.',
                          buttonText: 'Heartistry',
                          onPressed: () {
                            context.go('/heartistry');
                          },
                          imagePath: 'assets/images/conflict-resolution.png',
                        )
                      ],
              ),
            ));
      },
    );
  }
}
