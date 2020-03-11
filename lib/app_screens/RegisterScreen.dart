import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreen createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  textSection(),
                  bottomSection(),
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
          SizedBox(height: 20.0),
          txtmobile("Mobile Number", Icons.phone_android),
          SizedBox(height: 20.0),
          txtemail("Emailid", Icons.email),
          SizedBox(height: 20.0),
          txtadd("Address", Icons.streetview),
          SizedBox(height: 20.0),
          txtpin("PinCode", Icons.pin_drop),
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child:
      Image.asset('assets/logo-01.png',height: 200,width: 200,),
    );
  }
}
