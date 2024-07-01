import 'package:flutter/material.dart';

class MoralStories extends StatelessWidget {
  final Map bObj;

  const MoralStories({super.key, required this.bObj});

  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
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
            ],),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
              bObj["img"].toString(),
              width: media.width * 0.32,
              height: media.width * 0.50,
              fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            bObj["name"].toString(),
            maxLines: 3,
            style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Text(
            bObj["author"].toString(),
            maxLines: 1,
            style: TextStyle(
              color: Color.fromARGB(255, 11, 10, 10),
              fontSize: 13,
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}