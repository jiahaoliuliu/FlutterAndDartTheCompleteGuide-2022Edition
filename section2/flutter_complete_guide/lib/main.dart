import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

<<<<<<< HEAD
class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
=======
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What's pour favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ],
    },
    {
      'questionText': "What's your favorite instructor?",
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Question #' + _questionIndex.toString());
    print('Score: ' + score.toString());
    _totalScore += score;
    print('Final score ' + _totalScore.toString());
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
>>>>>>> bea8fb337ff2376422a72fca2bc3c5cc56852e8f
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    var questions = [
      'What is your favorite color?',
      'What is your favorite animal?'
    ];

=======
>>>>>>> bea8fb337ff2376422a72fca2bc3c5cc56852e8f
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
<<<<<<< HEAD
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
          ],
        ),
=======
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
>>>>>>> bea8fb337ff2376422a72fca2bc3c5cc56852e8f
      ),
    );
  }
}
