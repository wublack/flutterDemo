import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/Message.dart';
import 'package:flutter_app/main/Apply.dart';
import 'package:flutter_app/entity/TabItem.dart';
import 'package:flutter_app/main/Task.dart';

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
  List<String> list = ["首页", "追番", "历史"];
  int _currentIndex = 0;
  var pages;

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
  void initState() {
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    pages = [new Home(), new Message(), new Apply(), new Task(), new Home()];
    return Scaffold(
      body: pages[_currentIndex],
//     bottomNavigationBar: BottomNavigationBar(
//       currentIndex: _currentIndex,
//       onTap: (index){
//         debugPrint("index${index}");
//         setState(() {
//           _currentIndex = index;
//         });
//       },
//       items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("首页",),activeIcon: Icon(Icons.home,color: Colors.red,),backgroundColor: Colors.white),
//         BottomNavigationBarItem(icon: Icon(Icons.message),title: Text("消息",),activeIcon: Icon(Icons.message,color: Colors.red,),backgroundColor: Colors.white),
//         BottomNavigationBarItem(icon: Icon(Icons.settings_applications),title: Text("应用",),activeIcon: Icon(Icons.settings_applications,color: Colors.red,),backgroundColor: Colors.white),
////         BottomNavigationBarItem(icon: Icon(Icons.dashboard),title: Text("任务",),activeIcon: Icon(Icons.dashboard,color: Colors.red,),backgroundColor: Colors.white),
////         BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("我的",),activeIcon: Icon(Icons.person,color: Colors.red,),backgroundColor: Colors.white),
//       ],
//     ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: tabs
              .asMap()
              .keys
              .map((f) => InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndex = f;
                      });
                    },
                    child: Container(
                      height: 49,
                      width: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            tabs[f].iconName,
                            size: 25,
                            color: _currentIndex == f
                                ? Colors.green
                                : Colors.grey[600],
                          ),
                          Text(tabs[f].name,
                              style: TextStyle(
                                  fontSize: 11,
                                  color: _currentIndex == f
                                      ? Colors.green
                                      : Colors.grey[600]))
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
