import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Goodmorning, StreetPhrmacst'),
        actions: [
          IconButton(
            onPressed: () {
              print('Icon pressed!');
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Kumusta ang buhay2?', style: TextStyle(fontSize: 20)),
                  Image.network(
                    'https://em-content.zobj.net/thumbs/240/apple/354/dizzy-face_1f635.png',
                    height: 80,
                    width: 80,
                  ),
                ],
              ),
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Ako pa ba? :(', style: TextStyle(fontSize: 20)),
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/512/742/742774.png',
                    height: 80,
                    width: 80,
                  ),
                ],
              ),
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Kapoy naku T_T', style: TextStyle(fontSize: 20)),
                  Image.network(
                    'https://em-content.zobj.net/thumbs/240/apple/354/dizzy-face_1f635.png',
                    height: 80,
                    width: 80,
                  ),
                ],
              ),
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
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
                  IconButton(
                      onPressed: () {},
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
            ),
          ),
        ],
      ),
    );
  }
}
