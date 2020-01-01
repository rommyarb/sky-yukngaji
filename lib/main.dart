import 'package:flutter/material.dart';
import 'package:sky/intro.dart';
import 'package:sky/tabs/main_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: Intro()
        // home: MainMenu()
        );
  }
}
