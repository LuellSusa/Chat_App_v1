import 'package:chat_app/Login_page.dart';
import 'package:chat_app/chat_page.dart';
import 'package:chat_app/utils/brand_color.dart';
import 'package:chat_app/counter_stateful_demo.dart';
import 'package:chat_app/utils/brand_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: BrandColor.primaryColor,
      ),
      home: LoginPage(),
      routes: {
        '/chat': (context) => ChatPage(),
      },
    );
  }
}
