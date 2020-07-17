/*
 * @Author: Wu
 * @Date: 2020-07-16 18:00:51
 * @LastEditors: Wu
 * @LastEditTime: 2020-07-16 18:32:33
 * @Description: 
 */
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  List<Color> colors = [const Color(0xffffffff), const Color(0xfff93939)];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            centerTitle: true,
            title: Text(
              "首页",
              style: TextStyle(color: Color(0xff333333)),
            ),
            elevation: 1.0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.list),
                color: Color(0xff666666),
                iconSize: 32,
                onPressed: () => debugPrint("点击了"),
              )
            ],
          ),
          preferredSize: Size.fromHeight(44),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 141,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0, 0),
                        end: Alignment(0, 0.6),
                        tileMode: TileMode.clamp,
                        colors: [
                      const Color(0xFF49D6F9),
                      const Color(0xFF0EAFF8),
                      const Color(0xFF49D6F9)
                    ])),
              )
            ],
          ),
        ));
  }
}
