import 'package:azkar_app_me/core/resources/manager_font_sizes.dart';
import 'package:azkar_app_me/core/widgets/routes.dart';
import 'package:flutter/material.dart';

import 'core/presentation/about_screen.dart';
import 'core/presentation/main_screen.dart';
import 'core/presentation/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle:
              TextStyle(fontSize: ManagerFontSizes.s20, color: Colors.black),
        ),
      ),
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),
        Routes.mainScreen: (context) =>  const MainScreen(),
        Routes.aboutScreen: (context) => const AboutScreen(),
      },
    );
  }
}
