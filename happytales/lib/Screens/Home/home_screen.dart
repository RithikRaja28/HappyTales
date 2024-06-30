import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:happytales/Screens/Home/maintab_bar.dart';

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
      "img": "assests/images/Tortoise_hare.jpg"
    },
    {
      "name": "The Goose That Laid the Golden Eggs",
      "author": "Aesop",
      "img": "assests/images/lion_mouse.jpg"
    },
    {
      "name": "The Thirsty Crow",
      "author": "Lyle Lee Jenkins",
      "img": "assests/images/ThreeLittlePigs.jpg"
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
                    scale: 1.5,
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

                    SizedBox(height: media.width * 0.15),

                    Container(
                      child: CarouselSlider.builder(
                        itemCount: topPicksArr.length,
                        itemBuilder: (
                          BuildContext context,
                          int itemIndex,
                          int pageViewIndex,
                        ) {
                          var iObj = topPicksArr[itemIndex] as Map? ?? {};
                          return Container(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                    iObj["img"].toString(),
                                    width: media.width * 0.35,
                                    height: media.width * 0.5,
                                    fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  iObj["name"].toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  iObj["author"].toString(),
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 11, 10, 10),
                                    fontSize: 13,
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
                              ],
                            ),
                          );
                        },
                        options: CarouselOptions(
                          autoPlay: false,
                          enlargeCenterPage: true,
                          viewportFraction: 0.5,
                          aspectRatio: 0.9,
                          enlargeFactor: 0.4,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 225, // Adjust the height as needed
              child: MaintabBar(),
            ),
          ],
        ),
      ),
    );
  }
}
