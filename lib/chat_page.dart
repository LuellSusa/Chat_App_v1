import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('Good day, $username'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
              print('Log out successful!');
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ChatBubble(
                alignment: index % 2 == 0
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                message: "Hello",
              );
            },
          )
              // child: ListView(
              //   children: [
              //     ChatBubble(
              //       message: 'Hello, how are you?',
              //       alignment: Alignment.centerLeft,
              //     ),
              //     ChatBubble(
              //       message: 'Life is complicated',
              //       alignment: Alignment.centerRight,
              //     ),
              //     ChatBubble(
              //       message: 'i hope you are doing well...',
              //       alignment: Alignment.centerLeft,
              //     ),
              //     ChatBubble(
              //       message: 'You can do it',
              //       alignment: Alignment.centerLeft,
              //     ),
              //     ChatBubble(
              //       message: 'i hope you will',
              //       alignment: Alignment.centerLeft,
              //     ),
              //   ],
              // ),
              ),
          ChatInput(),
        ],
      ),
    );
  }
}
