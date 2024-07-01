import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:happytales/Screens/Home/maintab_bar.dart';
import 'package:happytales/Screens/Home/moral_stories.dart';
import 'package:happytales/Screens/Home/top_picks.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List topPicksArr = [
    {
      "name": "The Tortoise and the Hare",
      "author": "Aesop",
      "img": "assests/images/Tortoise_hare.jpg"
    },
    {
      "name": "The Lion and the Mouse",
      "author": "Aesop, Bernadette Watts",
      "img": "assests/images/lion_mouse.jpg"
    },
    {
      "name": "The Three Little Pigs",
      "author": "James Halliwell-Phillipps",
      "img": "assests/images/ThreeLittlePigs.jpg"
    },
  ];

  List moralArr = [
    {
      "name": "The Ant and the Grasshopper",
      "author": "Aesop",
      "img": "assests/images/Ant_Grasshopper.jpg"
    },
    {
      "name": "The Goose That Laid the Golden Eggs",
      "author": "Aesop",
      "img": "assests/images/Goose_GoldenEggs.jpg"
    },
    {
      "name": "The Thirsty Crow",
      "author": "Lyle Lee Jenkins",
      "img": "assests/images/Thirsty_crow.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  child: Transform.scale(
                    scale: 1.7,
                    origin: Offset(0, media.width * 0.8),
                    child: Container(
                      width: media.width,
                      height: media.width,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(111, 175, 227, 1),
                        borderRadius: BorderRadius.circular(media.width * 0.5),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 15),
                    AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      title: Row(
                        children: [
                          Text(
                            "Our Top Picks",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      leading: Container(),
                      leadingWidth: 1,
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                        )
                      ],
                    ),

                

                    SizedBox(
                      width: media.width,
                      height: media.width * 0.8,
                      child: CarouselSlider.builder(
                        itemCount: topPicksArr.length,
                        itemBuilder: (
                          BuildContext context,
                          int itemIndex,
                          int pageViewIndex,
                        ) {
                          var iObj = topPicksArr[itemIndex] as Map? ?? {};
                          return TopPicks(iObj: iObj,);
                        },
                        options: CarouselOptions(
                          autoPlay: false,
                          enlargeCenterPage: true,
                          viewportFraction: 0.45,
                          aspectRatio: 1,
                          enlargeFactor: 0.4,
                          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            "Moral Stories",
                            style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: media.width,
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                        scrollDirection: Axis.horizontal,
                        itemCount: moralArr.length,
                        itemBuilder: ((context, index) {
                          var bObj = moralArr[index] as Map? ?? {};

                          return MoralStories(bObj: bObj,);
                        }),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Container(
              height: 75, // Adjust the height as needed
              child: MaintabBar(),
            ),
          ],
        ),
      ),
    );
  }
}
