import 'package:flutter/material.dart';
import 'apiService.dart'; // Import the ApiService

class Fitness extends StatefulWidget {
  @override
  _FitnessState createState() => _FitnessState();
}

class _FitnessState extends State<Fitness> {
  final List<ChatBubble> _messages = [
    ChatBubble(
      message: 'Hi! How can I help you with your fitness?',
      isUser: false,
      showImage: true,
    ),
  ];
  final TextEditingController _controller = TextEditingController();
  final ApiService _apiService =
      ApiService(); // Create an instance of ApiService

  void _sendMessage() async {
    if (_controller.text.isEmpty) return;

    String userMessage = _controller.text;

    setState(() {
      _messages.add(ChatBubble(message: userMessage, isUser: true));
      _controller.clear();
    });

    try {
      var quizData = await _apiService.fetchQuizData(userMessage);
      String responseMessage = quizData['message'] ?? 'No message from server';

      setState(() {
        _messages.add(ChatBubble(message: responseMessage, isUser: false));
      });
    } catch (e) {
      setState(() {
        _messages.add(ChatBubble(message: 'Error: $e', isUser: false));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(9, 63, 111, 0.95),
      appBar: AppBar(
        backgroundColor: const Color(0xFF001120),
        title: const Text('Fitness',style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return _messages[index];
                },
              ),
            ),
            MessageInput(
              controller: _controller,
              onSend: _sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isUser;
  final bool showImage;

  ChatBubble({
    required this.message,
    required this.isUser,
    this.showImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Align(
        alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
        child: Row(
          mainAxisAlignment:
              isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            if (showImage && !isUser)
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/fitness.jpeg'),
                radius: 20,
              ),
            if (showImage && !isUser) SizedBox(width: 10),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: isUser ? Colors.purple : Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text(
                  message,
                  style: TextStyle(color: isUser ? Colors.white : Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageInput extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSend;

  MessageInput({required this.controller, required this.onSend});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Type a message',
                hintStyle: TextStyle(color: Colors.black54),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send,color: Colors.white),
            onPressed: onSend,
          ),
        ],
      ),
    );
  }
}
