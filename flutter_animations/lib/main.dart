import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//with 是 Dart 中的一个关键字，可以把它理解为 混入（mixin） 
class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  
  AnimationController controller;
  Animation<EdgeInsets> animation;

  @override
  void initState(){
    super.initState();
    //创建AnimationController对象
    controller =AnimationController(
      vsync: this, duration: const Duration(milliseconds: 1000)
    );
    //通过Tween对象,创建Animation对象
    // animation =Tween(begin: 50.0, end: 200.0).animate(controller)
    //             ..addListener((){
    //               //这句话不能少,否则widget不会重绘,也看不到动画效果
    //                 setState(() {});
    //             })
    //             //Dart语言技巧： 您可能不熟悉Dart级联符号(两个点)，如..addListener()，这种语法意味着使用animate()的返回值来调用addListener()方法。

    //             //AnimationStatus.completed 表示动画在结束时停止的状态，这个时候我们让动画反向执行（从后往前）；AnimationStatus.dismissed 表示动画在开始时就停止的状态，这个时候我们让动画正常执行（从前往后）。这样就可以让动画无限执行了。
    //             ..addStatusListener((status){
    //                 if (status ==AnimationStatus.completed) {
    //                   controller.reverse();
    //                 } else if(status ==AnimationStatus.dismissed){
    //                   controller.forward();
    //                 }  
    //               }
    //             );

    //EdgeInsetsTween是Tween的子类
    animation = EdgeInsetsTween(begin: EdgeInsets.only(top: 0.0 , left: 0.0), end: EdgeInsets.only(top: 500, left:0.0),).animate(
      // //设置曲线动画,也就是设置动画执行的路径
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.1, 
          0.9,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    )
    ..addListener((){
                  //这句话不能少,否则widget不会重绘,也看不到动画效果
                    setState(() {});
                })
                //Dart语言技巧： 您可能不熟悉Dart级联符号(两个点)，如..addListener()，这种语法意味着使用animate()的返回值来调用addListener()方法。

                //AnimationStatus.completed 表示动画在结束时停止的状态，这个时候我们让动画反向执行（从后往前）；AnimationStatus.dismissed 表示动画在开始时就停止的状态，这个时候我们让动画正常执行（从前往后）。这样就可以让动画无限执行了。
     ..addStatusListener((status){
                    print(status);
                    if (status ==AnimationStatus.completed) {
                      controller.reverse();
                    } else if(status ==AnimationStatus.dismissed){
                      controller.forward();
                    } 
                   
     });
    //执行动画
    controller.forward();
  }

  Future  _startAnimation() async{
    try {
      await controller.repeat();
    } on TickerCanceled {
      print("Animation Faild");
    }
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Animation动画"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Container(
            width: 150,
            height: 150,
            padding: animation.value,
            color:Colors.yellow,
            
          ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
    }

  }
