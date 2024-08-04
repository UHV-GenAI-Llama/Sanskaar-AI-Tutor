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
                              'An AI-powered app designed to nurture your ethical and moral development. Dive into quizzes on diverse topics such as Honesty, Truthfulness, Integrity, and Personal Values, tailored to enhance your understanding and application of these virtues. Engage with personalized content that challenges your perspectives and fosters growth in ethical decision-making. Explore the path to becoming a better version of yourself with Moral Mentor.',
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
                              "An app dedicated to expanding your knowledge of fundamental rights and social justice. Engage with interactive quizzes on topics such as Basic Rights, Social Justice, Civil and Political Rights, and Children's Rights, tailored to deepen your understanding and awareness. Challenge yourself and stay informed with personalized content designed to promote advocacy and equality. Embark on a journey of empowerment and education with RightsQuest.",
                          buttonText: 'RightsQuest',
                          onPressed: () {
                            context.go('/rightsquest');
                          },
                          imagePath: 'assets/images/conflict-resolution.png',
                          isImageFirst: true,
                        ),
                        const SizedBox(height: 60),
                        Section(
                          title: 'EcoPreserve',
                          description:
                              'We are dedicated to promoting social responsibility and community engagement. Our platform connects volunteers, organizations, and community members who share a passion for making a positive impact. Together, we can create meaningful change and build a stronger, more compassionate community.',
                          buttonText: 'EcoPreserve',
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
                            title: 'PrepPal',
                            description:
                                "Introducing 'PrepPal', your comprehensive companion for holistic exam preparation and well-being. Featuring four specialized chatbots, PrepPal offers tailored support for Exam Preparation, Stress Management, Fitness, and Nutrition. Whether you're seeking study tips, stress-relief techniques, workout routines, or dietary advice, PrepPal provides personalized guidance to help you excel academically and maintain a balanced lifestyle.",
                            buttonText: 'PrepPal',
                            onPressed: () {
                              context.go('/preppal');
                            },
                            imagePath: 'assets/images/community-service.png'),
                        const SizedBox(height: 60),
                        Section(
                            title: 'Heartistry',
                            description:
                                "Introducing 'Heartistry', an innovative app dedicated to cultivating empathy and compassion. Engage in Empathy Exercises, Reflect and Write in your journal, and explore the Let's Learn section to deepen your understanding of others' feelings. By participating in these activities, you'll develop the skills to better empathize and connect with those around you, fostering a more compassionate and understanding society.",
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
                              'An AI-powered app designed to nurture your ethical and moral development. Dive into quizzes on diverse topics such as Honesty, Truthfulness, Integrity, and Personal Values, tailored to enhance your understanding and application of these virtues. Engage with personalized content that challenges your perspectives and fosters growth in ethical decision-making. Explore the path to becoming a better version of yourself with Moral Mentor.',
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
                              "An app dedicated to expanding your knowledge of fundamental rights and social justice. Engage with interactive quizzes on topics such as Basic Rights, Social Justice, Civil and Political Rights, and Children's Rights, tailored to deepen your understanding and awareness. Challenge yourself and stay informed with personalized content designed to promote advocacy and equality. Embark on a journey of empowerment and education with RightsQuest.",
                          buttonText: 'RightsQuest',
                          onPressed: () {
                            context.go('/rightsquest');
                          },
                          imagePath: 'assets/images/conflict-resolution.png',
                        ),
                        const SizedBox(height: 80),
                        SectionMob(
                          title: 'EcoPreserve',
                          description:
                              'We are dedicated to promoting social responsibility and community engagement. Our platform connects volunteers, organizations, and community members who share a passion for making a positive impact. Together, we can create meaningful change and build a stronger, more compassionate community.',
                          buttonText: 'EcoPreserve',
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
                          title: 'PrepPal',
                          description:
                              "Introducing 'PrepPal', your comprehensive companion for holistic exam preparation and well-being. Featuring four specialized chatbots, PrepPal offers tailored support for Exam Preparation, Stress Management, Fitness, and Nutrition. Whether you're seeking study tips, stress-relief techniques, workout routines, or dietary advice, PrepPal provides personalized guidance to help you excel academically and maintain a balanced lifestyle.",
                          buttonText: 'PrepPal',
                          onPressed: () {
                            context.go('/preppal');
                          },
                          imagePath: 'assets/images/community-service.png',
                        ),
                        const SizedBox(height: 80),
                        SectionMob(
                          title: 'Heartistry',
                          description:
                              "Introducing 'Heartistry', an innovative app dedicated to cultivating empathy and compassion. Engage in Empathy Exercises, Reflect and Write in your journal, and explore the Let's Learn section to deepen your understanding of others' feelings. By participating in these activities, you'll develop the skills to better empathize and connect with those around you, fostering a more compassionate and understanding society.",
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
