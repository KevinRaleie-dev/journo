import 'package:flutter/material.dart';
import 'package:journo/src/widgets/buttons/long_rectangle_buttons.dart';
import 'package:journo/src/widgets/buttons/long_rectangle_button_secondary.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Journo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'Write. Reflect. Grow.',
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your writing, simplified!',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            LongRectangleButton(
              title: 'Create Account',
              onTap: () {},
            ),
            const SizedBox(height: 10),
            LongRectangleButtonSecondary(
              title: 'Sign in',
              onTap: () {},
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Continue as Guest'),
            ),
          ],
        ),
      ),
    );
  }
}
