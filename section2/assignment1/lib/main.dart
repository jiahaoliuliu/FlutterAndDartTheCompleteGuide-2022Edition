import 'package:flutter/material.dart';
import './Text.dart';
import 'TextControl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String title = "Who am I?";

  void _onTextControlPressed() {
    setState(() {
      title = "I am your worse enemy!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              TextTitle(title),
              TextControl(_onTextControlPressed),
            ],
          ),
        ),
      ),
    );
  }
}
