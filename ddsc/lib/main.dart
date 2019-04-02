import 'package:flutter/material.dart';
import 'CustomView/NavigationItemView.dart';
import 'ClassItems/DiscoverItem.dart';
import 'ClassItems/MineItem.dart';
import 'ClassItems/ProductsItem.dart';
import 'ClassItems/RecommandItem.dart';
void main() {
  runApp(MaterialApp(
    title: 'home',
    home: DDSCApp(),
  ));
}

// 创建底部导航栏
class DDSCApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DDSCAppState();
  }
}

class DDSCAppState extends State<DDSCApp> with TickerProviderStateMixin {
  
  int _currentIndex = 0;
  List<NavigationItemView> _naviagationIconList;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  void  _rebuild(){
    setState(() {
      
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //初始化导航图标
    _naviagationIconList = <NavigationItemView>[
      new NavigationItemView(icon: Icon(Icons.access_alarm),title: new Text('推荐'),vsync: this),
      new NavigationItemView(icon: Icon(Icons.access_alarm),title: new Text('项目'),vsync: this),
      new NavigationItemView(icon: Icon(Icons.access_alarm),title: new Text('我的'),vsync: this),
      new NavigationItemView(icon: Icon(Icons.access_alarm),title: new Text('发现'),vsync: this),
    ];

    //给每一个按钮添加监听
    for ( NavigationItemView view in _naviagationIconList) {
      view.controller.addListener(_rebuild);
    }

    _pageList = <StatefulWidget>[
      new RecommandPage(),
      new ProductPage(),
      new MinePage(),
      new DiscoverPage()
    ];
    //设置默认显示的页面
    _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context){

    var bottomNavigationBar = BottomNavigationBar(
      items: _naviagationIconList.map((NavigationItemView navigationItem) => navigationItem.item
              ).toList(),
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index){
        _naviagationIconList[_currentIndex].controller.reverse();
        _currentIndex = index;
        _naviagationIconList[_currentIndex].controller.forward();
        _currentPage = _pageList[_currentIndex];
      },
    );
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      body: Container(
        child: _currentPage,
      ),

    );
  }

}