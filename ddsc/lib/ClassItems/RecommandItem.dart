import 'package:flutter/material.dart';

class RecommandPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RecomandPageState();
  }
}

class RecomandPageState extends State<RecommandPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('推荐'),),
      body: Container(
        child: Text('推荐'),
      ),
    );
  }
}