import 'package:flutter/material.dart';


class StoryPage extends StatefulWidget {
  final String title;
  final String author;
  final String img;
  final String content;
  final String moral;

  const StoryPage({
    required this.title,
    required this.author,
    required this.img,
    required this.content,
    required this.moral,
    Key? key,
  }) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(widget.img, fit: BoxFit.cover),
              SizedBox(height: 20),
              Text(
                widget.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'by ${widget.author}',
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20),
              Text(
                widget.content,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              Divider(color: Colors.grey),
              Text(
                'Moral of the story:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              SizedBox(height: 10),
              Text(
                widget.moral,
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
