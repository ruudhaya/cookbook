import 'package:cookbook/drawercontent.dart';
import 'package:flutter/material.dart';

class OpacityDemo extends StatefulWidget {
  final String title;
  OpacityDemo({Key key, this.title}) : super(key: key);

  @override
  _OpacityDemoState createState() => new _OpacityDemoState();
}

class _OpacityDemoState extends State<OpacityDemo> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: DrawerContent(),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 300),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),
    );
  }
}
