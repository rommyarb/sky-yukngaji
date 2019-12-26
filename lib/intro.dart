import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sky/login.dart';
import 'package:sky/warna.dart';
import 'warna.dart';

class Intro extends StatelessWidget {
  const Intro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaUtama,
      body: Swiper(
        itemBuilder: (context, index) {
          Widget lanjut() {
            if (index == 2) {
              return Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Container(
                          height: 70,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45)),
                            color: warnaKuning,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Lanjut",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                        fontSize: 30),
                                  ),
                                  Text(
                                    " >",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 45),
                                  )
                                ],
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return SizedBox();
            }
          }

          return Container(
            child: Stack(
              children: <Widget>[
                Center(
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Text(
                                (index + 1).toString(),
                                style: TextStyle(
                                    fontSize: 50, color: Colors.white),
                              ),
                            ),
                            Text(
                              "SKY",
                              style: TextStyle(
                                  height: 0.8,
                                  fontSize: 120,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "STUDI KOMPREHENSIF #YUKNGAJI",
                              style: TextStyle(
                                  height: 0.2,
                                  fontSize: 13.5,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: lanjut(),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 3,
        pagination: SwiperPagination(),
        loop: false,
      ),
    );
  }
}
