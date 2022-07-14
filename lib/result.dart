import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;

  Result(this.resetHandler, this.score);

  String get resultScore {
    String resultText;
    if (score <= 8) {
      resultText = 'You are awesome!';
    } else if (score <= 12) {
      resultText = 'Pretty likeable!';
    } else if (score <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultScore,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
      TextButton(
        onPressed: resetHandler,
        child: const Text('Restart Quiz!'),
      ),
    ]));
  }
}
