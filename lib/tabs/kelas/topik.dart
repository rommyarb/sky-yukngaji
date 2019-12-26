import 'package:flutter/material.dart';

import '../../warna.dart';

class Topik extends StatefulWidget {
  Topik({Key key}) : super(key: key);

  @override
  _TopikState createState() => _TopikState();
}

class _TopikState extends State<Topik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(24),
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            "Aqidah",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 28,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            alignment: Alignment.center,
            child: Wrap(
              alignment: WrapAlignment.start,
              runSpacing: 15,
              spacing: 15,
              children: <Widget>[
                _item("Membentuk syaksiyah", 12, () {}),
                _item("Teori berpikir", 18, () {}),
                _item("Uqdatul qubro", 12, () {}),
                _item("Siapa Tuhan?", 18, () {}),
                _item("Tujuan hidup", 12, () {}),
                _item("Takdir", 18, () {}),
                _item("Dimensi Syariat Islam", 12, () {}),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _item(String title, int total, Function onPressed) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: warnaUtama,
      elevation: 0,
      child: Padding(
          padding:
              const EdgeInsets.only(top: 14, bottom: 10, left: 5, right: 5),
          child: Container(
            width: 115,
            height: 85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 18,
                        child: Text(
                          total.toString() + "+",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: warnaKuning,
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
      onPressed: onPressed,
    );
  }
}
