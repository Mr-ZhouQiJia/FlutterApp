import 'package:flutter/material.dart';

class Today extends StatefulWidget {
  @override
  TodayState  createState() => new TodayState();

}

class TodayState extends State<Today> {

  var draw =Drawer(
    elevation: 5,
    child: Container(
      alignment: AlignmentDirectional.center,
      color: Colors.red,
      child: Text(
        "侧边栏",
        style: TextStyle(fontSize: 25),
      ),
    ),
    );

  @override
  Widget build(BuildContext context){ 
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("想法"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: new Center(
          child: new Text("想法"),
        ),
        drawer: draw,
      ),
    );
  }
}