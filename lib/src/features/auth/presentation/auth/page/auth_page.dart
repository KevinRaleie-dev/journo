import 'package:flutter/material.dart';
import 'package:journo/src/features/auth/presentation/user_login/pages/user_login_page.dart';
import 'package:journo/src/features/auth/presentation/user_signup/page/user_signup_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool a = true;

  void go() {
    setState(() {
      a = !a;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (a) {
      return UserLoginPage(
        show: go,
      );
    } else {
      return UserSignupPage(show: go);
    }
  }
}
