import 'package:flutter/material.dart';
import 'models/chat_message_entity.dart';
import 'widgets/chat_bubble.dart';
import 'widgets/chat_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi $username!'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
              print('Logged out');
            },
          )
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
                  entity: ChatMessageEntity(
                    id: 'msg_$index',
                    text: 'Message #$index from $username',
                    createdAt: DateTime.now().millisecondsSinceEpoch,
                    author: Author(userName: username),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
