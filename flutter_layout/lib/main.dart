import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    var networkImage = new NetworkImage('url');
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.5),
      children: <Widget>[ 
        new Container(
          //alignment: Alignment.center,
          child: new Text('data'),
          width: 150,
          height: 150,
          color: Colors.red,
          
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('Timer 888'),
        ),
        new Positioned(
          top: 10.0,
          left: 10.0,
          child: new Text('左上'),
        ),
        new Positioned(
          bottom: 10.0,
          right: 10.0,
          child: new Text('右下'),
        )
      ],
    );

    return MaterialApp(
      title: 'layout',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('水平方向布局'),
        ),
        body: Center(
          child: stack,
        )
      ),
    );
  } 
}