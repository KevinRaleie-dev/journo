import 'package:flutter/material.dart';

class UserSignupPage extends StatefulWidget {
  final Function() show;

  const UserSignupPage({super.key, required this.show});

  @override
  State<UserSignupPage> createState() => _UserSignupPageState();
}

class _UserSignupPageState extends State<UserSignupPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 500,
        width: 500,
        color: Colors.blue,
          child: GestureDetector(
            child: const Text("go back"),
            onTap: widget.show,
          )
      ),
    );
  }
}
