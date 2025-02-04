import 'package:flutter/material.dart';

class PageFourScreen extends StatelessWidget {
  const PageFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Page One Screen'),
      ),
    );
  }
}
