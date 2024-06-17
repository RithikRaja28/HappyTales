import 'package:flutter/material.dart';

class Gemini extends StatefulWidget {
  const Gemini({super.key});

  @override
  State<Gemini> createState() => _GeminiState();
}

class _GeminiState extends State<Gemini> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 70, 69, 69),
        child: Center(
          child: Text('Gemini Page'),
        ),
      ),
    );
  }
}