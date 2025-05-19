import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final Alignment alignment;

  const ChatBubble({
    Key? key,
    required this.message,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message, // <- Here’s where we use the passed-in text
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // Ensure visible on light background
              ),
            ),
            SizedBox(height: 10),
            Image.network(
              'https://em-content.zobj.net/thumbs/240/apple/354/dizzy-face_1f635.png',
              height: 80,
              width: 80,
            ),
          ],
        ),
      ),
    );
  }
}
