import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
class MyPanel extends StatefulWidget {
  @override
  _MyPanel createState() => _MyPanel();
}

class _MyPanel extends State<MyPanel> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("MyPanel"),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/APP_DESIGN-10.jpg"),
          fit: BoxFit.cover,
        )),
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView(
                children: <Widget>[
                  headerSection(),
//            textSection(),
//            bottomSection(),
                ],
              ),
      ),
    );
  }

  signin(String mobile, password) async {}

  Container bottomSection() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        margin: EdgeInsets.only(top: 30.0),
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Center(
          child: Column(
            children: <Widget>[
//              FlatButton(
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(5.0)),
//                color: Colors.white,
//                onPressed: () {
//                  setState() {
//                    _isLoading = true;
//                  }
//
//                  signin(mobileeditingController.text,
//                      passwordeditingcontroller.text);
//                },
//                padding: EdgeInsets.all(5.0),
//                child: Center(
//                  child: Row(
//                    mainAxisSize: MainAxisSize.max,
//                    mainAxisAlignment: MainAxisAlignment.spaceAround,
//                    children: <Widget>[
//                      Text("LOGIN",
//                          textAlign: TextAlign.center,
//                          style: TextStyle(color: Colors.blue)),
//                      Icon(Icons.arrow_forward_ios),
//                    ],
//                  ),
//                ),
//              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                color: Colors.white,
                onPressed: () {
                  setState() {
                    _isLoading = true;
                  }

                  signin(mobileeditingController.text,
                      passwordeditingcontroller.text);
                },
                padding: EdgeInsets.all(15.0),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "REGISTER",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

//      RaisedButton(
//        onPressed: () {
//          _setState() {
//            _isLoading = true;
//          }
//          signin(mobileeditingController.text, passwordeditingcontroller.text);
//        },
//        color: Colors.white,
//        shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.circular(5.0)
//        ),
//        child: Text("Login", style: TextStyle(color: Colors.blue),
//        ),
//      ),
        ));
  }

  Container textSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.only(top: 30.0),
      child: Column(
        children: <Widget>[
          txtname("Full Name", Icons.person),
          SizedBox(height: 10.0),
          txtmobile("Mobile Number", Icons.phone_android),
          SizedBox(height: 10.0),
          txtemail("Emailid", Icons.email),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  TextEditingController mobileeditingController = new TextEditingController();
  TextEditingController passwordeditingcontroller = new TextEditingController();
  TextEditingController nameeditcontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController addcontroller = new TextEditingController();

  TextFormField txtmobile(String title, IconData data) {
    return TextFormField(
      controller: nameeditcontroller,
      textInputAction: TextInputAction.done,
      style: TextStyle(color: Colors.white70),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: title,
          labelStyle: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
          ),
          hintStyle: TextStyle(color: Colors.white70),
          icon: Icon(data)),
    );
  }

  TextFormField txtpin(String title, IconData data) {
    return TextFormField(
      controller: nameeditcontroller,
      textInputAction: TextInputAction.done,
      style: TextStyle(color: Colors.white70),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: title,
          labelStyle: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
          ),
          hintStyle: TextStyle(color: Colors.white70),
          icon: Icon(data)),
    );
  }

  TextFormField txtname(String title, IconData data) {
    return TextFormField(
      controller: nameeditcontroller,
      textInputAction: TextInputAction.done,
      style: TextStyle(color: Colors.white70),
      decoration: InputDecoration(
          labelText: title,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 1)),
          labelStyle: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
          ),
          hintStyle: TextStyle(color: Colors.white70),
          icon: Icon(data)),
    );
  }

  TextFormField txtadd(String title, IconData data) {
    return TextFormField(
      controller: addcontroller,
      textInputAction: TextInputAction.done,
      style: TextStyle(color: Colors.white70),
      decoration: InputDecoration(
          labelText: title,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 1)),
          labelStyle: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
          ),
          hintStyle: TextStyle(color: Colors.white70),
          icon: Icon(data)),
    );
  }

  TextFormField txtemail(String title, IconData data) {
    return TextFormField(
      controller: emailcontroller,
      textInputAction: TextInputAction.done,
      style: TextStyle(color: Colors.white70),
      decoration: InputDecoration(
          labelText: title,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 1)),
          labelStyle: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
          ),
          hintStyle: TextStyle(color: Colors.white70),
          icon: Icon(data)),
    );
  }

  TextFormField txtpassword(String title, IconData data) {
    return TextFormField(
      controller: passwordeditingcontroller,
      obscureText: true,
      style: TextStyle(color: Colors.white70),
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
          ),
          hintText: title,
          hintStyle: TextStyle(color: Colors.white70),
          icon: Icon(data)),
    );
  }

  Container headerSection() {
    final Color color = HexColor.fromHex('#137bd1');
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        alignment: Alignment.topLeft,
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/ICON-07.png',
                      height: 150,
                      width: 150,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "John Sodak",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        Text(
                          "Technician",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        Text(
                          "AC",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ],
                    ),
                    SizedBox(width: 60, height: 30),
                    Image.asset(
                      'assets/ICON-18.png',
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        width: 100.0,
                        margin: EdgeInsets.all(10.0),
                        child: Text(
                          'Not Yet Check in Time',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: 2,
                    ),
                    Container(
                      width: 100.0,
                      margin: EdgeInsets.all(10.0),
                      child: Text(
                        'Not Yet Working Time',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: 2,
                    ),
                    Container(
                      width: 100.0,
                      margin: EdgeInsets.all(10.0),
                      child: Text(
                        'Not Yet Checke Out',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    new Card(
                      child: new Container(
                        color: color,
                        padding: new EdgeInsets.all(15.0),
                        child: new Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/ICON-13.png',
                              height: 40.0,
                              width: 40.0,
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            new Text(
                              'Checked Time',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Card(
                      child: new Container(
                        color: color,
                        padding: new EdgeInsets.all(15.0),
                        child: new Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/ICON-14.png',
                              height: 40.0,
                              width: 40.0,
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            new Text(
                              'Checked Time',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Card(
                      child: new Container(
                        color: color,
                        padding: new EdgeInsets.all(15.0),
                        child: new Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/ICON-15.png',
                              height: 40.0,
                              width: 40.0,
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            new Text(
                              'Checked Time',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
//                Container(
//
//                    child: Row(
//
//                  children: <Widget>[
//                    new Card(
//                      child: new Container(
//                        color: color,
//                        padding: new EdgeInsets.all(5.0),
//                        child: new Column(
//                          children: <Widget>[
//                            SizedBox(
//                              height: 20.0,
//                            ),
//                            new Text(
//                              'Time Line',
//                              style: TextStyle(
//                                  color: Colors.white, fontSize: 16.0),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
//                  ],
//                )),
              ],
            )
          ],
        ));
  }

}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
