import 'package:firebase_practise_app/screens/authenticate/authenticate.dart';
import 'package:firebase_practise_app/service/AuthService.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          backgroundColor: Colors.brown[50],
          appBar: AppBar(
            title: Text('My App Home Page'),
            actions: [
              TextButton.icon(
                onPressed: () async {
                  await _auth.signout();
                },
                label: Text('logout'),
                icon: Icon(Icons.person),
              )
            ],
            backgroundColor: Colors.brown[400],
            elevation: 1.0,
          )),
    );
  }
}
