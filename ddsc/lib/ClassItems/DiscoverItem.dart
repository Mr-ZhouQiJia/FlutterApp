import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DiscoverPageState();
  }
}

class DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('发现'),),
      body: Container(
        child: Text('发现'),
      ),
    );
  }
}