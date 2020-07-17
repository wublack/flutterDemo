/*
 * @Author: Wu
 * @Date: 2020-07-15 16:31:12
 * @LastEditors: Wu
 * @LastEditTime: 2020-07-16 18:31:21
 * @Description: 
 */
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class TabItem {
  const TabItem({this.name, this.iconName});

  final String name;
  final IconData iconName;
}

final List<TabItem> tabs = [
  TabItem(name: "首页", iconName: Icons.home),
  TabItem(name: "消息", iconName: Icons.chat_bubble),
  TabItem(name: "应用", iconName: Icons.apps),
  TabItem(name: "任务", iconName: Icons.local_grocery_store),
  TabItem(name: "我的", iconName: Icons.person)
];
