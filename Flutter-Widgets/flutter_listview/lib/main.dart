import 'package:flutter/material.dart';
void main() => runApp(MyApp(
  items:List<String>.generate(1000, (i) => "Item ${i * 2}")
));

class MyApp extends StatelessWidget {

  final List<String> items;

  const MyApp({Key key, this.items}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: "listView",
      home: Scaffold(
        appBar: new AppBar(title: new Text('ListView widget'),),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index) {
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        )
        ),
      );
  }
}

// class MyList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return ListView(
//       scrollDirection: Axis.horizontal,
//               children: <Widget>[
//                 new Container(
//                   width: 180.0,
//                   color: Colors.lightBlue,
//                 ),
//                 new Container(
//                   width: 180.0,
//                   color: Colors.red,
//                 ),
//                 new Container(
//                   width: 180.0,
//                   color: Colors.deepOrange,
//                 ),
//                 new Container(
//                   width: 180.0,
//                   color: Colors.yellow,
//                 ),
//               ],
//     );
//   }
// }



