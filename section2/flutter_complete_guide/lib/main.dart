import 'package:flutter/material.dart';
import './question.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      "What's pour favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer1 "),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer2 "),
              onPressed: () => print('Answer 2 chosen'),
            ),
            RaisedButton(
              child: Text("Answer3 "),
              onPressed: () {
                //
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
