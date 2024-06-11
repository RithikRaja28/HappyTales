import 'package:flutter/material.dart';
import 'package:happytales/Screens/Home/home_screen.dart';
import 'package:happytales/Screens/Welcome%20Screen/intro_screens/intro_page1.dart';
import 'package:happytales/Screens/Welcome%20Screen/intro_screens/intro_page2.dart';
import 'package:happytales/Screens/Welcome%20Screen/intro_screens/intro_page3.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {


  // controller to keep track of which page we r on
  PageController _controller = PageController();


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
                onLastPage = (index == 2);
              });
            },
            children: [
              LiquidSwipe(
                pages: [
                  IntroPage1(),
                  IntroPage2(),
                  IntroPage3(),
                ],
                slideIconWidget: const Icon(Icons.arrow_back_ios),
                enableSideReveal: true,
              ),
            ],
          ),
          // dot indicators
          Container(
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
          ),
        ],
      )
    );
  }
}
