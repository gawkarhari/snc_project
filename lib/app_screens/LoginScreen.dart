import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:snc_project/app_screens/RegisterScreen.dart';

import 'MyPanel.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/APP_DESIGN-11.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView(
                children: <Widget>[
                  headerSection(),
                  textSection(),
                  bottomSection(),
                ],
              ),
      ),
    );
  }

  signin(String mobile, password) async {
    if(mobile.contains("8082406435")&& password.toString().contains("1234"))
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyPanel()));
      }
    else{
      Fluttertoast.showToast(
          msg: "Please enter valid creaditials",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  }

  Container bottomSection() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        margin: EdgeInsets.only(top: 30.0),
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Center(
          child: Column(
            children: <Widget>[
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
                padding: EdgeInsets.all(5.0),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("LOGIN",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                color: Colors.white,
                onPressed: () {
                  setState() {
                    _isLoading = true;
                  }

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
                padding: EdgeInsets.all(5.0),
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
          txtmobile("Your Mobile Number", Icons.phone_android),
          SizedBox(height: 30.0),
          txtpassword("password", Icons.lock),
        ],
      ),
    );
  }

  TextEditingController mobileeditingController = new TextEditingController();
  TextEditingController passwordeditingcontroller = new TextEditingController();

  TextFormField txtmobile(String title, IconData data) {
    return TextFormField(
      controller: mobileeditingController,
      style: TextStyle(color: Colors.white70),
      decoration: InputDecoration(
          hintText: title,
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Image.asset(
        'assets/logo-01.png',
        height: 200,
        width: 200,
      ),
    );
  }
}
