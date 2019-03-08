import 'package:flutter/material.dart';
import 'package:widgets/widgets/DdTextfield.dart';
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
    return 
       new Scaffold(
        appBar: new AppBar(
          title: new Text("想法"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        
        body: new GestureDetector(
          onTap: () {
            print("点击");
             FocusScope.of(context).requestFocus(FocusNode());
             },
          behavior: HitTestBehavior.opaque,
          child:  new Center(
          child:  DDTextfield(placeHolder: "342134",),
          ),
        ),
        
      );
    
  }
}