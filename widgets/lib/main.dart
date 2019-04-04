import 'package:flutter/material.dart';
import 'home.dart';
import 'package:widgets/today.dart';
import 'package:widgets/contacts.dart';
import 'navigation_icon_view.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.yellow,
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

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _currentIndex = 0; //当前界面的索引值
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList; //存放图标对应的页面
  StatefulWidget _currentPage; // 当前的显示页面
  void _rebuild(){
    setState(() {     
    });
  }

  @override
  void initState(){
    super.initState();
    //初始化导航图标
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(icon: new Icon(Icons.assessment), title: new Text("首页"), vsync: this),
      new NavigationIconView(icon: new Icon(Icons.all_inclusive), title: new Text("想法"), vsync: this),
      new NavigationIconView(icon: new Icon(Icons.add_shopping_cart), title: new Text("市场"), vsync: this),
      //new NavigationIconView(icon: new Icon(Icons.add_alert), title: new Text("通知"), vsync: this),
    ];

    //给每一个按钮区域加上监听
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    _pageList = <StatefulWidget>[
        new Home(),
        new Today(),
        new Contacts(),
    ];
    _currentPage =_pageList[_currentIndex];
  }
    
  @override
  Widget build(BuildContext context) {
    // var iconInfoMap = {
    //     "首页" :Icon(Icons.home),
    //     //"消息" :Icon(Icons.comment),
    //     "动态" :Icon(Icons.toys),
    //     "联系人":Icon(Icons.contacts)
    // };
    var bottomNavigationBar =BottomNavigationBar(
      items: _navigationViews.map((NavigationIconView navigationIconView) => navigationIconView.item).toList(), //添加icon按钮
      currentIndex: _currentIndex, //当前点击的索引值
      type: BottomNavigationBarType.fixed, //设置底部导航工具栏的类型: fixed
      onTap: (index){
        print(index);
        setState(() {
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage  = _pageList[_currentIndex];
        });
      },
    );

    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Container(
      //     color: Colors.white10,
      //     child: Row(
      //       children: <Widget>[
      //         Text('标题1'),
      //         Text('标题2')
      //       ],
      //     ),
      //   ),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.playlist_play),
      //       tooltip: 'Air it',
      //       onPressed: null,
      //     ),
      //     IconButton(
      //       icon: Icon(Icons.playlist_add),
      //       tooltip: 'Restich it',
      //       onPressed: null,
      //     )
      //   ],
      //   leading: Builder(
      //     builder: (BuildContext context){
      //       return IconButton(
      //         icon: const Icon(Icons.menu),
      //         onPressed: (){
      //           Scaffold.of(context).openDrawer();
      //         },  
      //         tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //       );
      //     },
      //     ),
      //     flexibleSpace: Text('d12321312'),
      //     backgroundColor: Colors.red,
      //     elevation: 10, //阴影高度
      //     bottom: PreferredSize(
      //       child: Text('bottom'),
      //       preferredSize: Size(30, 30),
      //     ),
      //     brightness: Brightness.dark, //控制状态栏的颜色,light文字是灰色的,dark文字是白色的
      //     iconTheme: IconThemeData(
      //       color: Colors.yellow,
      //       opacity: 0.5,
      //       size: 30
      //     ),
      //     centerTitle: true,
      //     toolbarOpacity: 0.5,
      //     bottomOpacity: 0.8,
      //     titleSpacing: 10,
      // ),
      //底部tabbar
      bottomNavigationBar: bottomNavigationBar,
      body: Container(
        child: _currentPage,


      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

