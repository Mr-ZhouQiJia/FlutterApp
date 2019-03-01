import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeState  createState() => new HomeState();

}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context){

    var rowLine =Row(
      children: <Widget>[
        Icon(Icons.extension,
            color: Colors.blue,
            ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "好友微视",
              style:TextStyle(fontSize:18),
            ),
          )
        ),    
        Icon(Icons.arrow_forward)
      ],
    );

    //正常文字
    var commonStyle =TextStyle(color: Colors.black, fontSize: 18);
    //灰色较小文字
    var infoStyle =TextStyle(color: Color(0xFF999999),fontSize: 13);
    //左边灰色头像
    var headImg =Image.asset("images/loginIcon.png",width: 45,height: 45,);
    //中间的信息
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text("心如止水",style:commonStyle),
        Text("锦绣未来长,莫欺少年穷.........",
           maxLines: 1,
           style: infoStyle,
           textAlign: TextAlign.start,
           overflow: TextOverflow.ellipsis, 
        )
      ],
    );
    var centerMessage =column;
    //尾部时间加图标
    var end =Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("06:45",style:infoStyle),
        Icon(Icons.visibility_off,size: 20,color:Color(0xff999999),)
      ],
    );
    //整行内容
    var  rowLine2 = Row(
        children: <Widget>[
          Padding(child: headImg,padding: EdgeInsets.all(5),),
          Expanded(child: Padding(padding: EdgeInsets.all(5),child: centerMessage,),),
          end
        ],
    );

    //布局3

    //左侧头像图片
    var leftHeaderImage =Image.asset("images/headerImage.jpg",width: 50,height: 50,);

    //中间内容
    var centerColumn = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "春风十里",
          style:commonStyle
        ),
        Row(
          children: <Widget>[
            Icon(Icons.next_week,size: 15,),
            Padding(child: Text("创世神 | 无", style: infoStyle,),
            padding: EdgeInsets.only(left: 10),)
          ],
        ),
        Row(
          children: <Widget>[
            Icon(Icons.keyboard,size: 15,),
            Padding(
              child: Text("海的彼岸有我未曾见证的风采",style: infoStyle,),
              padding: EdgeInsets.only(left:10),
            )
          ],
        )
      ],
    );

    var rowLine3 =Row(
      children: <Widget>[
          Padding(child: leftHeaderImage,padding: EdgeInsets.only(left: 5),),
          Expanded(child: Padding(padding: EdgeInsets.all(5),child: centerColumn,),),
          end
      ],
    );

    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("首页"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: new Column(
            
            children: <Widget>[
            new Container(
              color: Colors.blue,
              padding: EdgeInsets.all(20),
              child: rowLine
            ),
            new Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(15),
              //margin: EdgeInsets.only(left: 20,right: 20,top: 10),
              child: rowLine2,
            ),
            new Container(
              color: Colors.red,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(50),
              child: rowLine3,
            )
          ],
          
        ),
      ),
    ); 
  }
}