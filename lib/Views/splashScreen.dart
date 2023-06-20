import 'package:flutter/material.dart';
import 'package:plant_h/Utils/appTheme.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacementNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.lightColorScheme.primary,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: MediaQuery.sizeOf(context).height / 3,
          width: MediaQuery.sizeOf(context).width * 2 / 3,
        ),
      ),
    );
  }
}
