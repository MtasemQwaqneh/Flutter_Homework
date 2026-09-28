import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            spacing: 15,
            children: [
              CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 80, color: Colors.blueAccent),
              ),
              Text('Welcome Back', style: TextStyle(fontSize: 26)),
              Text('Sign in to continue'),
              Row(
                spacing: 5,
                children: [
                  Expanded(
                    child: MaterialButton(
                      shape: Border.all(),
                      onPressed: () {},
                      child: Row(
                        spacing: 5,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.google,
                            size: 15,
                            color: Colors.amber,
                          ),
                          Text(
                            'continue with google',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      shape: Border.all(),
                      onPressed: () {},
                      child: Row(
                        spacing: 5,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.apple,
                            size: 15,
                            color: Colors.grey,
                          ),
                          Text(
                            'continue with apple',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  Expanded(child: Divider()),
                  Text('or'),
                  Expanded(child: Divider()),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: 'Email address',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              MaterialButton(
                minWidth: 300,
                color: Colors.blueAccent,
                onPressed: () {},
                child: Text('Login', style: TextStyle(color: Colors.white)),
              ),
              Row(
                mainAxisAlignment: .center,
                children: [
                  Text('Dont have an account?'),
                  TextButton(onPressed: () {}, child: Text('Sign up')),
                ],
              ),
              TextButton(onPressed: () {}, child: Text('Forgot password?')),
            ],
          ),
        ),
      ),
    );
  }
}
