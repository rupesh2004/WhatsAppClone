import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsappclone/loginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4), // Set the duration of the splash screen
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const LoginPage()), // Navigate to your main screen
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Use the WhatsApp image here
            Image.asset(
              'assets/images/whatsapplogo.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'WhatsApp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            _isLoading
                ? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green), // Set the color to green
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
