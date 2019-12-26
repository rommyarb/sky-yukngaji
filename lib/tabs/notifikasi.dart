import 'package:flutter/material.dart';

import '../warna.dart';

class Notifikasi extends StatefulWidget {
  Notifikasi({Key key}) : super(key: key);

  @override
  _NotifikasiState createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaKuning,
      body: Center(
        child: Text("Notifikasi"),
      ),
    );
  }
}
