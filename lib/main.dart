import 'package:flutter/material.dart';
import 'package:plant_h/Views/loginScreen.dart';
import 'package:plant_h/Views/onboardingScreen.dart';
import 'package:plant_h/Views/splashScreen.dart';
import 'Utils/appTheme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(useMaterial3: true, colorScheme: AppTheme.lightColorScheme),
      darkTheme:
          ThemeData(useMaterial3: true, colorScheme: AppTheme.lightColorScheme),
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/': (context) => const OnboardingScreen(),
        '/login':(context) => LoginScreen(),
      },
      initialRoute: '/splash',
    );
  }
}
