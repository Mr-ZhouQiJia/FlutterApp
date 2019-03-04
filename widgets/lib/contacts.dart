import 'package:flutter/material.dart';
import 'dart:ui';
class Contacts extends StatefulWidget {
  @override
  ContactsState  createState() => new ContactsState();

}

class ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("登录/注册",style: TextStyle(fontSize: 17,color: Colors.black),),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: Icon(Icons.highlight_off,color: Colors.black,),
                onPressed: (){
                  print("再见👋");
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          
        ),
        resizeToAvoidBottomPadding: false,
        body:  _loginWidget(),
      ),
    );
  }

  Widget  _loginWidget(){
    final width = MediaQuery.of(context).size.width;
    final height =MediaQuery.of(context).size.height;
    print(width);
    return new Container(
      
      child: new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[ 
          Container(
            margin: EdgeInsets.only(top: 16),
            child:
            Text("输入手机号,用来登录、注册1",
            style: TextStyle(fontSize: 13,color: Colors.grey,),)
          ),
          TextField(
            //controller: phoneController,
           // keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              labelText: '您的手机号码',
              fillColor: Colors.white
            ),
            //autofocus: false,
          ),
          new Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 30),
            child: MaterialButton(
            
            color: Colors.orange,
            textColor: Colors.white,
            child: new Text("下一步"), 
            height: 30,
            minWidth: 280,
            onPressed: () {

            },
          ),
          )
          
        ],
      ),
      color: Colors.yellow,
      // constraints: BoxConstraints(
      //   minHeight: 500,
      //   minWidth: 414
      // ),
      // width: width,
      // height: height, 
    ) ;
  }


}