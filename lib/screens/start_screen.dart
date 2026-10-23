import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  static const _brandRed = Color(0xFFFF0A0A);
  static const _headingColor = Color(0xFF55565A);
  static const _secondaryColor = Color(0xFF7D8493);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  const Spacer(flex: 4),
                  const _SimpleLifeLogo(),
                  const Spacer(flex: 4),
                  const Text(
                    'Welcome',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _headingColor,
                      fontSize: 46,
                      height: 1,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -1,
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'What would you like to do?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _secondaryColor,
                      fontSize: 21,
                      height: 1.2,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 48),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: FilledButton(
                      onPressed: () => context.go('/signup'),
                      style: FilledButton.styleFrom(
                        backgroundColor: _brandRed,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ),
                      ),
                      child: const Text(
                        'Get a quote',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 27),
                  SizedBox(
                    width: double.infinity,
                    height: 66,
                    child: OutlinedButton(
                      onPressed: () => context.go('/login'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: _brandRed,
                        side: const BorderSide(color: _brandRed, width: 1.25),
                        padding: const EdgeInsets.fromLTRB(12, 7, 12, 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Access Your Policy',
                            style: TextStyle(
                              fontSize: 20,
                              height: 1.05,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 7),
                          Text(
                            'Make a claim, Renew policy and more',
                            style: TextStyle(
                              color: _secondaryColor,
                              fontSize: 16,
                              height: 1,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SimpleLifeLogo extends StatelessWidget {
  const _SimpleLifeLogo();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 88,
          height: 88,
          decoration: const BoxDecoration(
            color: Color(0xFFD7D7D7),
            shape: BoxShape.circle,
          ),
          clipBehavior: Clip.antiAlias,
          child: const Icon(
            Icons.public,
            color: StartScreen._brandRed,
            size: 91,
          ),
        ),
        const SizedBox(height: 10),
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Simple',
                style: TextStyle(color: StartScreen._headingColor),
              ),
              TextSpan(
                text: 'Life',
                style: TextStyle(color: StartScreen._brandRed),
              ),
            ],
          ),
          style: TextStyle(
            fontSize: 25,
            height: 1,
            fontWeight: FontWeight.w700,
            letterSpacing: -1.2,
          ),
        ),
      ],
    );
  }
}
