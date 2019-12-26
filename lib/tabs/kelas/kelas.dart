import 'package:flutter/material.dart';
import 'package:sky/tabs/kelas/topik.dart';

import '../../warna.dart';

class Kelas extends StatefulWidget {
  Kelas({Key key}) : super(key: key);

  @override
  _KelasState createState() => _KelasState();
}

class _KelasState extends State<Kelas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(24),
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Chip(
                label: Text(
                  "KELAS INTENSIF",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                backgroundColor: warnaUtama,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Mengenal Islam secara menyeluruh",
            style: TextStyle(
                fontSize: 28,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Kamu akan mengikuti proses pembelajaran Islam secara komprehensif",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 24,
          ),
          topikItem("Aqidah", Icons.search, 7, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Topik()));
          }, color: warnaUtama),
          topikItem("Hijrah", Icons.rowing, 7, () {}, color: warnaUtama),
          topikItem("Sejarah", Icons.schedule, 11, () {}, color: warnaUtama),
          topikItem("Dakwah", Icons.volume_up, 5, () {}, color: warnaUtama),
        ],
      ),
    );
  }

  Widget topikItem(String title, IconData icon, int episode, Function onPressed,
      {Color color = Colors.white}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: color,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 5),
          child: Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          episode.toString() + " Episode",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                icon,
                color: Colors.white,
                size: 60,
              )
            ],
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
