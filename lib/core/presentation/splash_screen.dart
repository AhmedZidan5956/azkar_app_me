import 'package:azkar_app_me/core/resources/manager_colors.dart';
import 'package:azkar_app_me/core/widgets/base_text.dart';
import 'package:azkar_app_me/core/widgets/constants.dart';
import 'package:flutter/material.dart';


import '../widgets/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: Constants.splashTime), () {
      Navigator.pushReplacementNamed(context, Routes.mainScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ManagerColors.secondaryColor,
                ManagerColors.white70,
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
          ),
          child: baseText(),
        ),
      ),
    );
  }
}
