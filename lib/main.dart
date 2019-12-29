import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:sky/config.dart';
import 'package:sky/intro.dart';
import 'package:sky/tabs/main_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: Intro()
        // home: MainMenu()
        );
    // home: MainMenu());
  }

  Future<void> initParse() async {
    await Parse().initialize(applicationId, parseUrl);
    var game = await ParseObject("GameScore").getAll();
    log(game.toString());
  }
}
