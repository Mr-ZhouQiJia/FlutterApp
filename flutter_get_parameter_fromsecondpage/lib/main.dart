import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'home',
      home: HomePage(),
    )
  );
}

class HomePage extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我是第一个页面'),),
      body: Center(
        child: Column(
          children: <Widget>[
            RaiseMyButton()
          ],
        ),
      ),
    );
  }
}

class RaiseMyButton extends StatelessWidget{
    @override 
    Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        RaisedButton(
              child: Text('点我进入下一页面'),
              onPressed: (){
            _navigateToSecondPage(context);
              },
              )
      ], 
    );
    }
    _navigateToSecondPage(BuildContext context) async {
    final result = await Navigator.push(context, 
            MaterialPageRoute(
            builder: (context)=> SecondPage(),
          ));
    print(result);
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result'),));
  }
}

class SecondPage extends StatelessWidget {
  final String timer = '我是Timer,电话:18506830738';
  final String allen = '我是Allen,电话:18339956321';
  @override
   Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(title: Text('第二个页面'),),
       body: Center(
         child: Column(
           children: <Widget>[
              RaisedButton(
                child: Text(timer),
                onPressed: (){
                  Navigator.pop(context, timer);
                },
              ),
              RaisedButton(
                child: Text(allen),
                onPressed: (){
                  Navigator.pop(context, allen);
                },
              )
           ],
         ),
       ),
     );
   }
}