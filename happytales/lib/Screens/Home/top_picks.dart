import 'package:flutter/material.dart';
import 'package:happytales/Screens/Story Screen/story_page.dart';

class TopPicks extends StatelessWidget {
  final Map iObj;

  const TopPicks({super.key, required this.iObj});

  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StoryPage(
              title: iObj['name'],
              author: iObj['author'],
              img: iObj['img'],
              content: iObj['content'],
              moral: iObj['moral'],
            ),
          ),
        );
      },
      child: SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
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
            ],),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
              iObj["img"].toString(),
              width: media.width * 0.32,
              height: media.width * 0.50,
              fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            iObj["name"].toString(),
            maxLines: 1,
            style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            iObj["author"].toString(),
            maxLines: 1,
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