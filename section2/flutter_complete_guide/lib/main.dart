import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  final _questions = const [
    {
      'questionText': "What's pour favorite color?",
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': "What's your favorite instructor?",
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },
  ];

  void _answerQuestion() {
    var aBool = true;
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Column(
                children: [
                  Question(_questions[_questionIndex]['questionText']),
                  ...(_questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
