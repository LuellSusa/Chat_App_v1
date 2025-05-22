import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LoginPage()));
}

void LoginUser() {
  print("Login Successful");
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button Pressed");
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Lets sign you in!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Welcome back!\nYou\'ve been missed',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
              height: 100,
              width: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  LoginUser();
                  print("Clicked!");
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                )),
            OutlinedButton(onPressed: () {}, child: FlutterLogo()),
            TextButton(
                onPressed: () {
                  print("URL clicked!");
                },
                child: Text('https://facebook.com',
                    style: TextStyle(color: Colors.blue))),
          ],
        ),
      ),
    );
  }
}
