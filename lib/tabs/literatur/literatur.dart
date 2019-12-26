import 'package:flutter/material.dart';

class Literatur extends StatefulWidget {
  Literatur({Key key}) : super(key: key);

  @override
  _LiteraturState createState() => _LiteraturState();
}

class _LiteraturState extends State<Literatur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Literatur"),
      ),
    );
  }
}
