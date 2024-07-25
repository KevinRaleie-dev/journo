import 'package:flutter/material.dart';

class AuthContainer extends StatelessWidget {
  final String title;
  final Color color;
  final IconData iconData;

  const AuthContainer(
      {super.key,
      required this.title,
      required this.color,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
    );
  }
}
