import 'dart:async';

import 'package:flutter/material.dart';
import 'package:savostoreapp/screens/authentication/LoginScreen.dart';
import 'package:savostoreapp/screens/dashboard/DashboardScreen.dart';
import 'package:savostoreapp/utils/Constants.dart';
import 'package:savostoreapp/utils/Extensions.dart';

import '../utils/Prefs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    moveToNextScreen();
  }

  void moveToNextScreen() {
    Timer(const Duration(seconds: AppConstants.splashScreenTimer), () => Prefs.getBool(PrefConstants.isUserLogin) ? AppExtensions.replaceScreen(context, const DashboardScreen()) : AppExtensions.replaceScreen(context, const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: AppColors.white),
        child: Center(child: Image.asset(AppAssets.appLogoImage)),
      ),
    );
  }
}
