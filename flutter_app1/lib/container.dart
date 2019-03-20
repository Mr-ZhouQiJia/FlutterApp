import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext){
    return 
      Scaffold(
        body: Center(
          child: Container(
            child: new Text('Hello Timer', style:TextStyle(fontSize: 40.0)),
            alignment: Alignment.topRight,
            width: 300,
            height: 300,
            color: Colors.lightBlue,
          ),
        )
      );
  }
}