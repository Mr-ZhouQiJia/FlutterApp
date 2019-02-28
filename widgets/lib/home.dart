import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeState  createState() => new HomeState();

}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context){

    var rowLine =Row(
      children: <Widget>[
        Icon(Icons.extension,
            color: Colors.blue,
            ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "好友微视",
              style:TextStyle(fontSize:18),
            ),
          )
        ),    
        Icon(Icons.arrow_forward)
      ],
    );

    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("首页"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: new Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: rowLine,
        ),
      ),
    );
  }
}