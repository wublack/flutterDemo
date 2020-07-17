/*
 * @Author: Wu
 * @Date: 2020-07-16 15:05:24
 * @LastEditors: Wu
 * @LastEditTime: 2020-07-16 18:30:35
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:flutter_app/MyHome.dart';
import 'package:flutter_app/login/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '千仞数字设施',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).MaterialApp
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.lightBlue,
          primaryColor: Colors.white),
//      home: Login(),
      routes: {
        '/': (BuildContext context) => Login(),
        '/home': (BuildContext context) => MyHomePage(),
      },
    );
  }
}
