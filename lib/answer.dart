import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _questionText;
  final VoidCallback
      selectHandler; // what stored in selectHandler is a pointer to the function _questionAnswer

  Answer(this.selectHandler, this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: selectHandler,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(_questionText),
      ),
    );
  }
}
