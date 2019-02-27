import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Container(
          color: Colors.white10,
          child: Row(
            children: <Widget>[
              Text('标题1'),
              Text('标题2')
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: 'Air it',
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.playlist_add),
            tooltip: 'Restich it',
            onPressed: null,
          )
        ],
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },  
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
          ),
          flexibleSpace: Text('d12321312'),
          backgroundColor: Colors.red,
          elevation: 10, //阴影高度
          bottom: PreferredSize(
            child: Text('bottom'),
            preferredSize: Size(30, 30),
          ),
          brightness: Brightness.dark, //控制状态栏的颜色,light文字是灰色的,dark文字是白色的
          iconTheme: IconThemeData(
            color: Colors.yellow,
            opacity: 0.5,
            size: 30
          ),
          centerTitle: true,
          toolbarOpacity: 0.5,
          bottomOpacity: 0.8,
          titleSpacing: 10,
      ),
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        color: Colors.red,
        height: 300,
        width:  300,
        margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
        padding: EdgeInsets.all(50),
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
