import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:widgets/widgets/DdTextfield.dart';
class Contacts extends StatefulWidget {
  @override
  ContactsState  createState() => new ContactsState();

}

class ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context){
    return  new Scaffold(
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
      );
    
  }

  Widget  _loginWidget(){
    final width = MediaQuery.of(context).size.width;
    final height =MediaQuery.of(context).size.height;
    print(width);
    return new GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){
        print("单击");
        
        FocusScope.of(context).requestFocus(new FocusNode());
      },
    
      child: new  Container(
      child: new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[ 
          Container(
            margin: EdgeInsets.only(top: 16,bottom: 5),
            child:
            Text("输入手机号,用来登录、注册",
            style: TextStyle(fontSize: 13,color: Colors.grey,),)
          ),
          new DDTextfield(),
          new Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 30),
            child: MaterialButton(
            color: Colors.orange,
            textColor: Colors.white,
            child: new Text("下一步"), 
            height: 30,
            minWidth: 280,
            onPressed: () {
              print("下一步");
            },
          ),
          )

        ],
      ),
      color: Colors.yellow,
      
       width: width,
       height: height, 
     )
      ) ;
  }


}