import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TaskState();
  }
}

class TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: PreferredSize(
      child: AppBar(
        title: Text("任务"),
        centerTitle: true,
        elevation: 1,
      ),
      preferredSize: Size.fromHeight(44),
    ));
  }
}
