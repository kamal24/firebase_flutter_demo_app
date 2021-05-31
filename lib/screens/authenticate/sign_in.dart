import 'package:firebase_practise_app/service/AuthService.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  AuthService _auth = new AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            title: Text('Sign In To My App'),
            backgroundColor: Colors.brown[400]),
        backgroundColor: Colors.brown[100],
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Center(
                child: ElevatedButton(
              child: Text('Sign In as Anonymous User'),
              onPressed: () async {
                dynamic result = await _auth.signInAnon();
                if (result == null) {
                  print("Signed In Error");
                } else {
                  print("Signed In");
                  print(result.uid);
                }
              },
            ))));
  }
}
