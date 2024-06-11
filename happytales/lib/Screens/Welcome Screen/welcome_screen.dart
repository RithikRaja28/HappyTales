import 'package:flutter/material.dart';
import 'package:happytales/Screens/Home/home_screen.dart';
import 'package:happytales/Screens/Welcome%20Screen/intro_screens/intro_page1.dart';
import 'package:happytales/Screens/Welcome%20Screen/intro_screens/intro_page2.dart';
import 'package:happytales/Screens/Welcome%20Screen/intro_screens/intro_page3.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // controller to keep track of which page we r on
  PageController _controller = PageController();

  String swipe = 'Swipe left for next page';
  // keep track of if we r on the last page or not
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // page view
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 3);
              if (onLastPage) {
                swipe = '';
              } else {
                swipe = 'Swipe left for next page';
              }
            });
          },
          children: [
            LiquidSwipe(
              pages: [
                IntroPage1(),
                IntroPage2(),
                IntroPage3(),
              ],
              slideIconWidget: SizedBox(child: const Icon(Icons.arrow_back_ios_new), width: 30, height: 30),
              enableLoop: true,
              fullTransitionValue: 300,
              enableSideReveal: true,
              waveType: WaveType.liquidReveal,
            ),
          ],
        ),
        // swipe instruction
         Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              swipe,
              style: const TextStyle(
                color: Color.fromARGB(255, 127, 126, 126),
                fontSize: 16,
              ),
            ),
          ),
        ),
        // dot indicators
        /* Container(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                // skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text("Skip"),
                ),


                // dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),


                // next or done
                onLastPage ?
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                  child: Text("Done"),
                ):
                GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text("Next"),
                ),
              ],
            ),
          ), */
      ],
    ));
  }
}
