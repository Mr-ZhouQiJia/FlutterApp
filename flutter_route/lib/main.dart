import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'test',
    theme: ThemeData(backgroundColor: Colors.red),
    home: MyApp(),
  ));
} 
class MyApp extends StatelessWidget {
  
  Widget build(BuildContext context){
    return //MaterialApp(
      //title: '路由',
     // home:
       new Scaffold(
        appBar: AppBar(title: new Text('路由'),),
        backgroundColor: Colors.lightBlue,
        body: Center(
          child: RaisedButton(
            child: Text('点我'),
            onPressed: (){
              print('123');
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => new SecondPage()
              ));
            },
          ),
        ),
     // ),
    );
  }
}

class  SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('第二个页面'),),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: (){
            Navigator.pop(context);
          },
        )
      ),
    );
  }
}
