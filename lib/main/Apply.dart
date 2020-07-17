/*
 * @Author: Wu
 * @Date: 2020-07-16 15:07:45
 * @LastEditors: Wu
 * @LastEditTime: 2020-07-16 18:31:41
 * @Description: 
 */
import 'package:flutter/material.dart';

class Apply extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ApplyState();
  }
}

class ApplyState extends State<Apply> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: PreferredSize(
      child: AppBar(
        title: Text("应用"),
        centerTitle: true,
        elevation: 1,
      ),
      preferredSize: Size.fromHeight(44),
    ));
  }
}
