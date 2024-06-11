import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:happytales/Screens/Authentication/login.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
 /*  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  } */

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
             Container(
                height: 100,
                width: 100,
                child: Image.asset('images/splashimage.png'),
              ),
            
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text('Happy Tales', style: TextStyle(fontSize: 25 )),
            ),
          ],
        ),
        ), nextScreen: const Login(),
        splashTransition: SplashTransition.fadeTransition,
        
        backgroundColor: Colors.white,
        
    );




  }
}




//Scaffold(
   /*    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset('images/splashimage.png'),
            ),
            Container(
              child: Text('Happy Tales', style: TextStyle(fontSize: 25 )),
            ),
          ],
        ),
      ),
    ); */