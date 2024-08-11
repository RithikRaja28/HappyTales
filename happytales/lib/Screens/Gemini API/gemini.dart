import 'package:flutter/material.dart';

class Gemini extends StatelessWidget {
  const Gemini({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gemini Page'),
      ),
      body: Center(
        child: Text('Welcome to the Gemini Page!'),
      ),
    );
  }
}