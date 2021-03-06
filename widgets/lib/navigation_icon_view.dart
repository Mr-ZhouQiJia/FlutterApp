import 'package:flutter/material.dart';

class NavigationIconView {
  //创建两个属性,一个用来展示icon ,一个动画处理
  final BottomNavigationBarItem item;
  final AnimationController controller;

 // 创建 NavigationIconView 需要传入三个参数， icon 图标，title 标题， TickerProvider
  NavigationIconView({
    Widget icon,
    Widget title,
    TickerProvider vsync}) :
    item = new BottomNavigationBarItem(
      icon: icon,
      title: title,
    ),
    controller = new AnimationController(
      duration: kThemeAnimationDuration, // 设置动画持续的时间
      vsync: vsync                        // 默认属性和参数
    );

}