import 'package:flutter/material.dart';
import 'package:sky/tabs/kelas/kelas.dart';

import '../warna.dart';

class MainMenu extends StatefulWidget {
  MainMenu({Key key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  // List<Widget> _mainMenus = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: warnaUtama,
        body: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
            top: -60,
            left: -60,
            child: ClipOval(
              child: Container(
                height: 180,
                width: 180,
                color: warnaKuning,
              ),
            ),
          ),
          Positioned(
            top: 130,
            right: -30,
            child: ClipOval(
              child: Container(
                height: 80,
                width: 80,
                color: warnaKuning,
              ),
            ),
          ),
          Positioned(
              child: Align(
            alignment: Alignment.center,
            child: Wrap(
              spacing: 15,
              runSpacing: 15,
              children: <Widget>[
                menuItem("KELAS", Icons.school, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Kelas()));
                }),
                menuItem("LITERATUR", Icons.book, () {}),
                menuItem("TANTANGAN", Icons.accessibility_new, () {}),
                menuItem("KUIS", Icons.lightbulb_outline, () {},
                    color: warnaKuning),
                menuItem("TOKO", Icons.local_grocery_store, () {}),
                menuItem("DONASI", Icons.local_atm, () {}),
              ],
            ),
          ))
        ]));
  }

  Widget menuItem(String title, IconData icon, Function onPressed,
      {Color color = Colors.white}) {
    return Column(
      children: <Widget>[
        RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: color,
          elevation: 0,
          child: SizedBox(
            height: 100,
            width: 100,
            child: Icon(
              icon,
              size: 60,
              color: color == Colors.white ? warnaUtama : Colors.white,
            ),
          ),
          onPressed: onPressed,
        ),
        FlatButton(
          padding: EdgeInsets.all(0),
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
