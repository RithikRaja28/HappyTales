import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {


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
                'assests/images/introPage1.jpg',
                height: size.height*0.5,
                fit: BoxFit.cover,
              ),
            ),
            
            const SizedBox(height: 40.0),
            Center(
              child: Text(
                'Welcome to Happytales!',
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Where Stories Come to Life',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            const Text(
              'Explore a world of imagination and adventure. Our app generates personalized stories just for you!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
