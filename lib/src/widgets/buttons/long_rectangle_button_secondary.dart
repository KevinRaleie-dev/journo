import 'package:flutter/material.dart';

class LongRectangleButtonSecondary extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const LongRectangleButtonSecondary(
      {super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 380,
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black, width: 2)),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Merriweather',
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
