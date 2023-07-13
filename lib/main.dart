import 'package:flutter/material.dart';
import 'package:plant_h/Views/onboardingScreen.dart';
import 'package:plant_h/Views/splashScreen.dart';
import 'package:plant_h/features/authentication/presentation/signupScreen.dart';
import 'package:plant_h/features/community/presentation/community_screen.dart';
import 'Utils/appTheme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/authentication/presentation/loginScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
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
          ThemeData(useMaterial3: true, colorScheme: AppTheme.darkColorScheme),
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/': (context) => const OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup':(context) => SignUpScreen(),
        '/community':(context) => CommunityScreen()
      },
      initialRoute: '/community',
    );
  }
}
