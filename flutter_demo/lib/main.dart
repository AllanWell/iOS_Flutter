import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MyApp(routeParam: window.defaultRouteName,));

class MyApp extends StatelessWidget {
  final String routeParam;

  const MyApp({Key key, this.routeParam}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "iOS 调用 Flutter 页面",
      home: Scaffold(
        appBar: AppBar(
          title: Text("iOS 调用 Flutter 页面"),
        ),
        body: Center(
          child: Text(routeParam),
        ),
      ),
    );
  }
}
