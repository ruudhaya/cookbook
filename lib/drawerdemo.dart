import 'package:cookbook/drawercontent.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  @override
  _DrawerDemoState createState() => new _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerContent(),
      ),
    );
  }
}
