import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uhv_project/pages/preppal.dart';
import 'package:uhv_project/pages/heartistry.dart';
import 'package:uhv_project/pages/home.dart';
import 'package:uhv_project/pages/conflict-resolution.dart';
import 'package:uhv_project/pages/community-service.dart';
import 'package:uhv_project/pages/feedback.dart';
import 'package:uhv_project/pages/login_page.dart';
import 'package:uhv_project/pages/moral-mentor.dart';
import 'package:uhv_project/pages/profile.dart';
import 'package:uhv_project/widgets/moral-mentor/scenarios_page.dart';
import 'package:uhv_project/pages/rightsquest.dart';
import 'package:go_router/go_router.dart';
import 'package:uhv_project/pages/signup_page.dart';
import 'package:uhv_project/widgets/preppal/examprep.dart';
import 'package:uhv_project/widgets/preppal/fitness.dart';
import 'package:uhv_project/widgets/preppal/nutrition.dart';
import 'package:uhv_project/widgets/preppal/stress.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: HomePage()),
      ),
      GoRoute(
        path: '/profile',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: ProfilePage()),
      ),
      GoRoute(
        path: '/signup',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: SignupPage()),
      ),
      GoRoute(
        path: '/login',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: LoginPage()),
      ),
      GoRoute(
        path: '/moral-mentor',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: MoralMentorPage()),
      ),
      GoRoute(
        path: '/moral-mentor/scenarios',
        pageBuilder: (context, state) =>
            NoTransitionPage(child: ScenariosPage()),
      ),
      GoRoute(
        path: '/rightsquest',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: RightsQuestPage()),
      ),
      GoRoute(
        path: '/community-service',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: CommunityServicePage()),
      ),
      GoRoute(
        path: '/conflict-resolution',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: ConflictResolutionPage()),
      ),
      GoRoute(
        path: '/preppal',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: PrepPalPage()),
      ),
      GoRoute(
        path: '/preppal/exam',
        pageBuilder: (context, state) => NoTransitionPage(child: ExamPrep()),
      ),
      GoRoute(
        path: '/preppal/nutrition',
        pageBuilder: (context, state) => NoTransitionPage(child: Nutrition()),
      ),
      GoRoute(
        path: '/preppal/fitness',
        pageBuilder: (context, state) => NoTransitionPage(child: Fitness()),
      ),
      GoRoute(
        path: '/preppal/stress',
        pageBuilder: (context, state) => NoTransitionPage(child: Stress()),
      ),
      GoRoute(
        path: '/heartistry',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: HeartistryPage()),
      ),
      GoRoute(
        path: '/feedback',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: FeedbackPage()),
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'UHV',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Inika'),
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider);
  }
}
