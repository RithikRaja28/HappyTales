import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:happytales/Screens/Gemini%20API/message_widget.dart';

class Gemini extends StatefulWidget {
  const Gemini({super.key});

  @override
  State<Gemini> createState() => _GeminiState();
}

class _GeminiState extends State<Gemini> {
  late final GenerativeModel _model;
  late final ChatSession _chatSession;
  final FocusNode _textFieldFocus = FocusNode();
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _loading = false;

  String _characterName = '';
  String _storyType = 'Fantasy';
  bool _isCharacterNameSelected = false;

  final List<String> _storyTypes = ['Fantasy', 'Majestic', 'Adventure', 'Mystery'];

  @override
  void initState() {
    super.initState();
    _model = GenerativeModel(
      model: 'gemini-pro',
      apiKey: 'AIzaSyAdFW-tfACDH3xlRiB2TFir0RZpm9-RxCc',
    );
    _chatSession = _model.startChat();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _buildThemeData(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Generate Your Story!'),
          backgroundColor: const Color.fromRGBO(111, 175, 227, 1),
          elevation: 0,
        ),
        body: Stack(
          children: [
            _buildBackground(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  if (!_isCharacterNameSelected) ...[
                    _buildCharacterNameInput(),
                  ] else ...[
                    _buildStoryTypeSelection(),
                    const SizedBox(height: 10),
                    Expanded(
                      child: _buildChatList(),
                    ),
                    _buildInputArea(),
                  ]
                ],
              ),
            ),
            if (_loading)
              Container(
                color: Colors.black45,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }

  ThemeData _buildThemeData() {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(15),
        hintStyle: TextStyle(color: Colors.blueGrey[300]),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }

  Widget _buildChatList() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _chatSession.history.length,
        itemBuilder: (context, index) {
          final Content content = _chatSession.history.toList()[index];
          final text = content.parts.whereType<TextPart>().map<String>((e) => e.text).join('');
          return MessageWidget(
            text: text,
            isFromUser: content.role == 'user',
          );
        },
      ),
    );
  }

  Widget _buildCharacterNameInput() {
    return Column(
      children: [
        const Text(
          'What is your character\'s name?',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueAccent),
        ),
        const SizedBox(height: 15),
        TextField(
          controller: _textController,
          decoration: InputDecoration(
            hintText: 'Enter character name',
            prefixIcon: const Icon(Icons.person, color: Colors.blueAccent),
          ),
          onSubmitted: (name) {
            if (name.trim().isEmpty) return;
            setState(() {
              _characterName = name.trim();
              _isCharacterNameSelected = true;
            });
            _textController.clear();
          },
        ),
      ],
    );
  }

  Widget _buildStoryTypeSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Choose a type of story:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _storyType,
                icon: const Icon(Icons.arrow_drop_down, color: Colors.blueAccent),
                items: _storyTypes.map((type) {
                  return DropdownMenuItem(
                    value: type,
                    child: Text(
                      type,
                      style: const TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
                onChanged: (newType) {
                  setState(() {
                    _storyType = newType!;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInputArea() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              focusNode: _textFieldFocus,
              decoration: InputDecoration(
                hintText: 'Type Generate and Send !!',
                prefixIcon: const Icon(Icons.message, color: Colors.blueAccent),
              ),
              controller: _textController,
              onSubmitted: _sendChatMessage,
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {
              _sendChatMessage(_textController.text);
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueAccent,
              ),
              child: const Icon(Icons.send, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _sendChatMessage(String message) async {
    if (message.trim().isEmpty) return;
    setState(() {
      _loading = true;
    });
    try {
      final response = await _chatSession.sendMessage(
        Content.text("Create a $_storyType story with a character named $_characterName: $message"),
      );
      final text = response.text;
      if (text == null) {
        _showError('No response from API.');
        return;
      } else {
        setState(() {
          _loading = false;
          _scrollDown();
        });
      }
    } catch (e) {
      _showError(e.toString());
      setState(() {
        _loading = false;
      });
    } finally {
      _textController.clear();
      setState(() {
        _loading = false;
      });
      _textFieldFocus.requestFocus();
    }
  }

  void _scrollDown() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 750),
        curve: Curves.easeOutCirc,
      ),
    );
  }

  void _showError(String message) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Something went wrong'),
          content: SingleChildScrollView(
            child: SelectableText(message),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
