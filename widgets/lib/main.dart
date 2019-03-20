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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _counter = 0;
  int _currentIndex = 0; //当前界面的索引值
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList; //存放图标对应的页面
  StatefulWidget _currentPage; // 当前的显示页面
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var iconInfoMap = {
        "首页" :Icon(Icons.home),
        //"消息" :Icon(Icons.comment),
        "动态" :Icon(Icons.toys),
        "联系人":Icon(Icons.contacts)
    };
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

