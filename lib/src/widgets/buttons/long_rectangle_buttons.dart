import 'package:flutter/material.dart';

// change this to LongRectangleButtonPrimary
class LongRectangleButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const LongRectangleButton(
      {super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 380,
        height: 55,
        decoration: BoxDecoration(
            color: const Color(
                0xFFFFFF00), //   use actual figma color - need to create a color scheme
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Merriweather',
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
