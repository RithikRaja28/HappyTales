import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:happytales/Screens/Home/maintab_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List topPicksArr =[
    {
      "name" : "The Tortoise and the Hare",
      "author": "Aesop",
      "img":""
    },
    {
      "name" : "The Lion and the Mouse",
      "author": "Aesop, Bernadette Watts",
      "img":""
    },
    {
      "name" : "Goodnight Moon",
      "author": "Margaret Wise Brown",
      "img":""
    },
    {
      "name" : "The Three Little Pigs",
      "author": "James Halliwell-Phillipps",
      "img":""
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
                        borderRadius: BorderRadius.circular(media.width * 0.5)
                      ),
                    ),
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,

                  children: [
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
                              fontWeight: FontWeight.w700
                              ),
                            ),
                        ],
                      ),
                      leading: Container(),
                      leadingWidth: 1,
                      actions: [
                        IconButton(
                          onPressed: (){}, icon: Icon(Icons.menu)
                        )
                      ],
                    ),

                    Container(
                      child: CarouselSlider.builder(
                        itemCount: topPicksArr.length,
                        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                          return Container();

                        },
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 0.6,
                          aspectRatio: 0.9,
                          enlargeFactor: 0.4,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                        ),
                      
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
            height: 505, // Adjust the height as needed
            child: MaintabBar(),
          ),
          ],
        ),
      ),
    );
  }
}