import 'package:flutter/material.dart';
import './question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function selectHandler;

  Quiz(
      {required this.selectHandler,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['question'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => selectHandler(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
