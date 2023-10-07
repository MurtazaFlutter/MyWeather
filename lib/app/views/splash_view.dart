import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/app/utils/constans.dart';
import 'package:weather_app/app/views/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Add a delay of 3 seconds before navigating to the welcome page
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(Constants.weatherAnimation),
      ),
    );
  }
}
