import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:speak_ai/main.dart'; // Import HomeScreen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildAnimatedText(String text) {
    return ScaleTransition(
      scale: _animation,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 36,
          fontFamily: 'Amsterdam',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: 'Speak Flow'.split('').map(_buildAnimatedText).toList(),
      ),
      backgroundColor: const Color(0xFF264653),
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.sizeTransition,
      duration: 3000,
    );
  }
}
