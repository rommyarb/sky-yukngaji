import 'package:flutter/material.dart';

import '../warna.dart';

class Pengaturan extends StatefulWidget {
  Pengaturan({Key key}) : super(key: key);

  @override
  _PengaturanState createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Text("Pengaturan"),
      ),
    );
  }
}
