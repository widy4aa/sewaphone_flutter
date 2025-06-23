import 'package:flutter/material.dart';
import 'get_started_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const GetStartedPage()),
      );
    });

    return const Scaffold(
      backgroundColor: Color(0xFF0A3756),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/Logo.png'), height: 200),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}