import 'package:flutter/material.dart';
import 'package:happytales/Screens/Story Screen/story_page.dart';

class FairyTales extends StatelessWidget {
  final Map cObj;

  const FairyTales({super.key, required this.cObj});

  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StoryPage(
              title: cObj['name'],
              author: cObj['author'],
              img: cObj['img'],
              content: cObj['content'],
              moral: cObj['moral'],
            ),
          ),
        );
      },
      child: Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: media.width * 0.32,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(0, 2),
                  blurRadius: 5,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                cObj["img"].toString(),
                width: media.width * 0.32,
                height: media.width * 0.50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            cObj["name"].toString(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Text(
            cObj["author"].toString(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 11, 10, 10),
              fontSize: 13,
            ),
          ),
        ],
      ),
    ));
  }
}
