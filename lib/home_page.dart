import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("SQFLITE CRUD"),
      ),
      body: Center(
        child: new Text("data"),
      ),
    );
  }
}
