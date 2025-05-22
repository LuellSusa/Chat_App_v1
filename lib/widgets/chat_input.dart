import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  ChatInput({super.key});

  final chatmsgcontroller = TextEditingController();

  void onSendButtonPressed() {
    print('Chat message: ${chatmsgcontroller.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.white,
              )),
          //INPUT FIELD
          Expanded(
              child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 5,
            minLines: 1,
            controller: chatmsgcontroller,
            textCapitalization: TextCapitalization.sentences,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              hintText: 'Type a message',
              hintStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
            ),
            style: TextStyle(color: Colors.white),
          )),

          IconButton(
              onPressed: onSendButtonPressed,
              icon: Icon(
                Icons.send,
                color: Colors.white,
              ))
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
    );
  }
}
