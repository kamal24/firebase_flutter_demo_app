import 'package:firebase_practise_app/model/user.dart';
import 'package:firebase_practise_app/screens/authenticate/authenticate.dart';
import 'package:firebase_practise_app/screens/home/home.dart';
import 'package:firebase_practise_app/screens/wrapper.dart';
import 'package:firebase_practise_app/service/AuthService.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'model/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
/*
    return MultiProvider(providers: [
      Provider<AuthService>(create: (_) => AuthService()),
      StreamProvider(
          create: (context) => context.read<AuthService>().user,
          initialData: null)
    ], child: MaterialApp(home: Wrapper()));
    */
    return StreamProvider<MyUser?>.value(
        value: AuthService().user,
        initialData: null,
        child: Builder(builder: (context) => MaterialApp(home: Wrapper())));
  }
}
