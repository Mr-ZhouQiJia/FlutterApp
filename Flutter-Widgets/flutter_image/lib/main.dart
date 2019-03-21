import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
   Widget build(BuildContext){
     return MaterialApp(
       title: "Image",
       home: Scaffold(
         body: Center(
           child: Container(
             child: new Image.network(
               'https://upload.jianshu.io/users/upload_avatars/1910189/c9a1ae15805b.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240',
               fit: BoxFit.cover,
             ),
             width: 300,
             height: 200,
             color: Colors.lightBlue,
           ),
         ),
       ),
     );


   } 
}