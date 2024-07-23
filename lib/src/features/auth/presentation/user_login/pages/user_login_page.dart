import 'package:flutter/material.dart';

class UserLoginPage extends StatefulWidget {
  //this function will allow us to swap between the login page and the sign up page
  final Function() show;

  const UserLoginPage({super.key, required this.show});

  @override
  State<UserLoginPage> createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 500,
        width: 500,
        color: Colors.red,
        child: GestureDetector(
          child: const Text("if you tap on me you will be navigated to a diffrent screen"),
          onTap: widget.show,
        ),
      ),
    );
  }
}
