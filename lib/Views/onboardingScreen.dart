import 'package:flutter/material.dart';
import 'package:plant_h/Utils/appTheme.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Column(children: [
        Container(
          //Image
          height: height * 2 / 3,
          width: double.infinity,
          color: const Color.fromARGB(255, 255, 228, 196),
          child: Image.asset(
            'assets/images/onboardingScreen2.png',
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ),
        ),
        Container(
          //quote
          padding: EdgeInsets.symmetric(
              vertical: height / 16, horizontal: width / 20),
          child: const Text(
            '“The greatest gift of a garden is\n the restoration of the soul”',
            maxLines: 2,
            style: AppTheme.quotes,
            textAlign: TextAlign.center,
          ),
        ),
        FilledButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login');
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 35),
            child: Text(
              'Get Started',
              style: TextStyle(
                  fontFamily: 'Roboto-Medium.ttf',
                  fontWeight: FontWeight.w500,
                  fontSize: 23),
            ),
          ),
        ),
      ]),
    );
  }
}
