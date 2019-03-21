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
            //color: Colors.lightBlue,
            padding: const EdgeInsets.fromLTRB(50, 45, 20, 50),
            margin: const EdgeInsets.all(30),
            decoration: new BoxDecoration(
              //渐变效果
              gradient: const LinearGradient(
                colors: [Colors.red,Colors.green,Colors.purple],
              ),
              border: Border.all(width: 5.0,color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(50)),

            ),
          ),
        )
      );
  }
}