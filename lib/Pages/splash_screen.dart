import 'package:flutter/material.dart';
import 'onboarding_page.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _navigateToOnboarding();
  }

  _navigateToOnboarding()async{
    await Future.delayed(Duration(seconds: 4),(){});
    Navigator.pushReplacement(
        context as BuildContext,
        MaterialPageRoute(
            builder: (context)=> OnboardingPage()),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40.0),
        child: Center(
          child: Image.asset('assets/logo.png'),
        ),
      ),
    );
  }
}
