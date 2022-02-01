import 'package:quizapp/about/about.dart';
import 'package:quizapp/home/home.dart';
import 'package:quizapp/quiz/quiz.dart';
import 'package:quizapp/login/login.dart';
import 'package:quizapp/profile/profile.dart';
import 'package:quizapp/topics/topics.dart';
import 'package:quizapp/login/enterCreds.dart';

var appRoutes = {
  '/': (context) => const HomePage(),
  '/login': (context) => const LoginPage(),
  '/topics': (context) => const TopicsPage(),
  '/profile': (context) => const ProfilePage(),
  '/about': (context) => const AboutPage(),
  '/enterCreds': (context) => const EnterCreds(),
};
