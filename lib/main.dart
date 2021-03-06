import 'package:cookbook/JsonListDemo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Demo';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: JsonListViewer(),
      // SimpleForm(),
      // TabDemo(),
      // OrientationDemo(title: appTitle),
      // OpacityDemo(title: appTitle),
    );
  }
}
