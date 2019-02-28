import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  @override
  ContactsState  createState() => new ContactsState();

}

class ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("市场"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: new Center(
          child: new Text("市场"),
        ),
      ),
    );
  }
}