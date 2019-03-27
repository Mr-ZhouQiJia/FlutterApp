import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    var card =Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: new Text('重中之重啧啧啧重中之重',style:TextStyle(fontWeight:FontWeight.w500)),
            subtitle: new Text('zzx:341324235234'),
            leading: new Icon(Icons.account_box),
          ),
          new Divider(),
          ListTile(
            title: new Text('我去特热情特认为',style:TextStyle(fontWeight:FontWeight.w500)),
            subtitle: new Text('犬瘟热:341324235234'),
            leading: new Icon(Icons.account_box),
          ),
          new Divider(),
          ListTile(
            title: new Text('去玩儿群翁',style:TextStyle(fontWeight:FontWeight.w500)),
            subtitle: new Text('清任务二:341324235234'),
            leading: new Icon(Icons.account_box),
          ),
          new Divider(),
        ],
      )
    );

    return MaterialApp(
      title: 'cardWidget',
      home: Scaffold(
        appBar: AppBar(title: new Text('123'),),
        body: Center(
          child: card,
        ),  
      ),
    );
  }
}
