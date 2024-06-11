import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'images/introPage3.jpg',
                height: size.height * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 40.0),
            const Text(
              'Listen and Enjoy',
              style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Narrated Stories',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            const Text(
              'Let our app read the stories to you with engaging narration. Perfect for bedtime or anytime!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),

             ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )),
           
          ],
        ),
      ),
    );
  }
}
