import 'package:flutter/material.dart';

class Message extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MessageState();
  }

}

class MessageState extends State<Message> with SingleTickerProviderStateMixin{

  TabController tabController ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length:2,vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        child:  AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          elevation: 1.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(text: '消息',),
              Tab(text: '通知'),
            ],
            controller:tabController,
          ),
        ),
        preferredSize: Size.fromHeight(50),
      ),
      body: TabBarView(
        children: <Widget>[
          IconButton(icon: Icon(Icons.dashboard),),
          IconButton(icon: Icon(Icons.face),),
        ],
        controller:tabController,
      ),
    );
  }

}