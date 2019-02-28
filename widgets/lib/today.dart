import 'package:flutter/material.dart';

class Today extends StatefulWidget {
  @override
  TodayState  createState() => new TodayState();

}

class TodayState extends State<Today> {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("今日"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: new Center(
          child: new Text("今日"),
        ),
      ),
    );
  }
}