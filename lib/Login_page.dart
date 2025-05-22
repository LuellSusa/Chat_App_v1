import 'package:flutter/material.dart';
import 'chat_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();

  void loginUser(context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      Navigator.pushNamed(context, '/chat', arguments: userNameController.text);
      print('login successful');
    } else {
      print('not successful');
    }
  }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

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
        child: const Icon(Icons.message),
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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value != null &&
                              value.isNotEmpty &&
                              value.length < 5) {
                            return "Your username should be more than 5 characters";
                          } else if (value != null && value.isEmpty) {
                            return "Please type your username";
                          }
                          return null;
                        },
                        controller: userNameController,
                        decoration: InputDecoration(
                          hintText: 'Add your username',
                          hintStyle: TextStyle(color: Colors.blueGrey),
                          border: OutlineInputBorder(), // InputDecoration
                        ),
                      ), // TextFormField
                    ),

                    //PASSWORD
                    SizedBox(height: 10),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(color: Colors.blueGrey),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    loginUser(context);
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
