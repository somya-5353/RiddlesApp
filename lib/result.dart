import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final Function _resetHandler;

  Result(this._totalScore, this._resetHandler);

  String get AnswerPhrase {
    String answerText;
    if (_totalScore >= 45) {
      answerText = "Awesome, You did an excellent job!";
    } else if (_totalScore >= 40) {
      answerText = "Great, You are almost there!";
    } else if (_totalScore >= 30) {
      answerText = "Good, Keep trying!";
    } else {
      answerText = "Sorry, You missed it!";
    }
    return answerText;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          Text(
            AnswerPhrase,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text('Reset'),
            color: Colors.green,
            onPressed: _resetHandler,
          ),
        ],
      ),
    );
  }
}
