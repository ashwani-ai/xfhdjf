import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("I-herd"),
          backgroundColor: Colors.blue[300],
        ),
        backgroundColor: Colors.blue[100],
        body: Container(
            child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[],
        )));
  }
}
