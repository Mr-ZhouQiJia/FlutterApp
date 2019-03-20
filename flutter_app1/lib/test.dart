import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext){
     return MaterialApp(
       title: "Text Widget",
       home: Scaffold(
         body: Center(
            child: Text("Hello Widget"),    
         ),
       ),
     );
   }
}