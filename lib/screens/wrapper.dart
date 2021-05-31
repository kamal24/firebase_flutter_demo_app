import 'package:firebase_practise_app/model/user.dart';
import 'package:firebase_practise_app/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';
import '../model/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);
    print(user);

    //final user = context.watch<MyUser?>();

    if (user != null)
      return Home();
    else
      return Authenticate();
  }
}
