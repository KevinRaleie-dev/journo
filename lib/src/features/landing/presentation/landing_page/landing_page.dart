import 'package:flutter/material.dart';
import 'package:journo/src/features/auth/presentation/auth/page/auth_page.dart';
import 'package:journo/src/widgets/buttons/long_rectangle_buttons.dart';
import 'package:journo/src/widgets/buttons/long_rectangle_button_secondary.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  static const List<String> taglines = [
    'Your writing, simplified.',
    'Mongolo oa hau, o nolofalitsoe.',
    'Mongwalo wa gago, o nolofaditšwe.',
    'Ukubhala kwakho, kwenziwe kwaba lula.',
    'Ukubhala kwakho, kwenziwe lula.',
    'Tsalwa ra wena, ri olovisiwile.',
    'Jou skryfwerk, vereenvoudig.',
    'Mokwalo wa gago, o nolofaditswe.',
    'Ukutlola kwakho, okwenziwe lula.',
    'Vhuṅwali haṋu, ho leludzwaho.',
    'Kubhala kwakho, kwentiwe kwaba lula.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Journo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'WorkSans',
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Write, Reflect, Grow.',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Merriweather',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              AnimatedSwitcher(
                duration: const Duration(seconds: 2),
                child: StreamBuilder<int>(
                  stream: Stream.periodic(
                      const Duration(seconds: 2), (i) => i % taglines.length),
                  builder: (context, snapshot) {
                    return Center(
                      child: Text(
                        taglines[snapshot.data ?? 0],
                        key: ValueKey<String>(taglines[snapshot.data ?? 0]),
                        style: const TextStyle(
                            fontSize: 16, fontFamily: 'Merriweather'),
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              LongRectangleButton(
                title: 'Create Account',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AuthPage()));
                },
              ),
              const SizedBox(height: 10),
              LongRectangleButtonSecondary(
                title: 'Sign in',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AuthPage()));
                },
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Continue as Guest',
                  style: TextStyle(fontFamily: 'Merriweather', fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
