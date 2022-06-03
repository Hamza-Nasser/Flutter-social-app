import 'package:flutter/material.dart';
import 'package:flutter_social_app/pages/Navigation%20Activity/main_nav_page.dart';
import 'package:flutter_social_app/pages/login/forgot_pass.dart';
import 'package:flutter_social_app/pages/login/login.dart';
import 'package:flutter_social_app/pages/login/register.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LogIn(),
      routes: {
        '/home': (context) => const MainNavigationScreen(),
        '/login': (context) => const LogIn(),
        '/register': (context) => const Register(),
        '/forgot_pass': (context) => const ForgotPass(),
      },
    ),
  );
}
