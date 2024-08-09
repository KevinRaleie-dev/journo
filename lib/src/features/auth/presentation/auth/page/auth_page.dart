import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:journo/src/features/auth/presentation/user_login/pages/user_login_page.dart';
import 'package:journo/src/features/auth/presentation/user_signup/page/user_signup_page.dart';

class AuthState extends StatelessWidget {
  const AuthState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          return Center(
            child: Container(
              color: Colors.red,
              child: TextButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                },
                child: Text("Logout"),
              ),
            ),
          );
        }
        return AuthPage();
      },
    );
  }
}

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
