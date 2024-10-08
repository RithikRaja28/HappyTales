import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {


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
                'assests/images/introPage2.jpg',
                height: size.height * 0.5,
                fit: BoxFit.cover,
              ),
            ),

            
        
            const SizedBox(height: 40.0),
            const Text(
              'Choose Your Adventure',
              style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Customizable Stories',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            const Text(
              'Select themes, character names, and locations to create stories that are uniquely yours.',
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