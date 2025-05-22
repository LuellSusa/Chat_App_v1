import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LoginPage()));
}

void LoginUser() {
  print(userNameControler.text);
  print(passwordControler.text);
  print("Login Successful");
}

final userNameControler = TextEditingController();
final passwordControler = TextEditingController();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // This ensures the body resizes when the keyboard appears
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button Pressed");
        },
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        // This makes your content scrollable when space is tight
        padding:
            EdgeInsets.all(16), // Optional: adds padding around the content
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                height: 100,
                width: 100,
              ),
              SizedBox(height: 20),
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

              //USER NAME
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: userNameControler,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              //PASSWORD
              SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: passwordControler,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    LoginUser();
                    print("Clicked!");
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                splashColor: Colors.red,
                onTap: () {
                  print("One Tapped");
                },
                onDoubleTap: () {
                  print("Double Tapped");
                },
                onLongPress: () {
                  print("Long Pressed");
                },
                child: Column(
                  children: [
                    Text('find us on'),
                    Text('https://facebook.com'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
