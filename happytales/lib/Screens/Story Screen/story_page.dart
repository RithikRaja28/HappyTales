import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

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
  late FlutterTts flutterTts;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> _speak() async {
    // Construct the complete text to read aloud
    String text = "${widget.title} by ${widget.author}. ${widget.content} Moral of the story: ${widget.moral}";
    
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5); // Adjust the speech rate as per your preference
    await flutterTts.speak(text);
  }

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
              ElevatedButton(
                onPressed: _speak,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.volume_up),
                    SizedBox(width: 10),
                    Text("Read Aloud"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
