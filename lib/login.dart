import 'package:flutter/material.dart';

import 'warna.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var outlineBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(color: warnaKuning, width: 3));

  bool _ingatSaya = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -80,
              right: -80,
              child: ClipOval(
                child: Container(
                  height: 200,
                  width: 200,
                  color: warnaKuning,
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: -80,
              child: ClipOval(
                child: Container(
                  height: 130,
                  width: 130,
                  color: warnaUtama,
                ),
              ),
            ),
            Positioned(
              top: 300,
              right: -30,
              child: ClipOval(
                child: Container(
                  height: 80,
                  width: 80,
                  color: warnaUtama,
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.center,
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Text(
                        "Masuk",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 16),
                              hintText: "E-mail",
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: outlineBorder,
                              focusedBorder: outlineBorder)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 16),
                              hintText: "Kata Sandi",
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: outlineBorder,
                              focusedBorder: outlineBorder)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: CheckboxListTile(
                            onChanged: (value) {
                              setState(() {
                                _ingatSaya = !_ingatSaya;
                              });
                            },
                            value: _ingatSaya,
                            title: Text("Ingat saya"),
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                        Flexible(
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Lupa sandi?",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: RaisedButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45)),
                        color: warnaKuning,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 14),
                          child: Text(
                            "Masuk",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                fontSize: 20),
                          ),
                        ),
                        onPressed: () {
                          // ...
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Or",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 3, color: warnaKuning),
                              borderRadius: BorderRadius.circular(45)),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 14),
                            child: Text(
                              "FACEBOOK",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 16),
                            ),
                          ),
                          onPressed: () {
                            // .. facebook login
                          },
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RaisedButton(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: warnaKuning, width: 3),
                              borderRadius: BorderRadius.circular(45)),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 14),
                            child: Text(
                              "GOOGLE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 16),
                            ),
                          ),
                          onPressed: () {
                            // .. google sign in
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Tidak punya akun?",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ),
                        ),
                        Flexible(
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Buat akun SKY",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
