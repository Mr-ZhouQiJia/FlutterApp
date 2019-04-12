import 'package:flutter/material.dart';

class RecommandPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RecomandPageState();
  }
}

class RecomandPageState extends State<RecommandPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: AppBar(
      //   title: Text('推荐',style: TextStyle(color: Colors.black,fontSize: 16)),
      //   toolbarOpacity: 0.3,
      //   backgroundColor: Colors.white,
      //   //centerTitle: false,
      //   elevation: 0,
      //   flexibleSpace: Text('1232342134314123423'),
      //   ),
      backgroundColor: Colors.lightBlue,
      body: Container(
        child: CustomScrollView(
           slivers: <Widget>[
             SliverAppBar(
               title: Text('123'),
             ),
           ],
        )
      ),
    );
  }
}



