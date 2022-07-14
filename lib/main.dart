import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      'question': 'What\'s your fav color ?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your fav animal ?',
      'answers': [
        {'text': 'Lion', 'score': 11},
        {'text': 'Snake', 'score': 9},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Fox', 'score': 5}
      ]
    },
    {
      'question': 'What\'s your fav friend name ?',
      'answers': [
        {'text': 'Ahmed', 'score': 1},
        {'text': 'Sami', 'score': 2},
        {'text': 'Yasser', 'score': 1},
        {'text': 'Aya', 'score': 1}
      ]
    },
  ];

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _questionAnswer(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                selectHandler: _questionAnswer,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_reset, _totalScore),
      ),
    );
  }
}
