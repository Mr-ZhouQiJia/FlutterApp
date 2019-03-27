import 'package:flutter/material.dart';

class listBuilder extends StatelessWidget {
  final List<String> itemList = List<String>.generate(1000, (i) => "Item $i"); 
  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: itemList.length,
      itemBuilder: (context,index) {
        return new ListTile(
          title: new Text("${itemList[index]}"),
        );
      },
    );
  }
}