import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.only(top: 30.0),
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          headerSection(),
//          getlistview(),
        ],
      ),
    );
  }
  Center headerSection() {
    return  Center(
      child: Column(
        mainAxisSize:MainAxisSize.min,
        children: <Widget>[
          RaisedButton(

            onPressed: null,
            child:Text("Departmaent",style: TextStyle(color: Colors.white,),),
            color: Colors.white,

          ),RaisedButton()
        ],
      ),
    );
//      Container(
//      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
//      child:
//        Column(
//          children: <Widget>[
//            Image.asset('assets/person.png'),
//            Text("John", style: TextStyle(color: Colors.white,fontSize: 36,decoration: TextDecoration.none),),
//            Text("123456", style: TextStyle(color: Colors.white,fontSize: 16,decoration: TextDecoration.none),),
//            getlistview()
//          ],
//        )
//    );
  }

  Widget getlistview() {
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.account_balance),
          title: Text("Department setup"),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
    return listView;
  }

}
