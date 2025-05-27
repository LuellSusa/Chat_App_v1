import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

import 'models/chat_message_entity.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);

  List<ChatMessageEntity> _messages = [
    ChatMessageEntity(
        author: Author(userName: 'StreetPhilosopher'),
        createdAt: 2131231242,
        id: '1',
        text: 'First text'),
    ChatMessageEntity(
        author: Author(userName: 'StreetPhilosopher'),
        createdAt: 2131231442,
        id: '1',
        text: 'Second text',
        imageUrl: 'https://3009709.youcanlearnit.net/Alien_LIL_131338.png'),
    ChatMessageEntity(
      author: Author(userName: 'jane'),
      createdAt: 2131234242,
      id: '1',
      text: 'Third text',
    )
  ];

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('Hi $username!'),
        actions: [
          IconButton(
              onPressed: () {
                //TODO: Navigate back to LoginPage on logout
                Navigator.pushReplacementNamed(context, '/');
                print('Icon press');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return ChatBubble(
                        alignment: _messages[index].author.userName ==
                                'StreetPhilosopher'
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        entity: _messages[index]);
                  })),
          ChatInput(),
        ],
      ),
    );
  }
}
