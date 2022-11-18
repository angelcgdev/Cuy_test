import 'package:cuy_test/presentation/about/about_page.dart';
import 'package:cuy_test/presentation/home/home_page.dart';
import 'package:cuy_test/presentation/login/login_page.dart';
import 'package:cuy_test/presentation/splash/splash_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> get appRoutes {
  return <String, WidgetBuilder>{
    'splash': (_) => const SplasgPage(),
    'login': (_) => const LoginPage(),
    'home': (_) => const HomePage(),
    'about': (_) => const AboutPage(),
  };
}
