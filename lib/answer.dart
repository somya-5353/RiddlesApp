import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _completionHandler;
  final String _answerText;

  Answer(this._completionHandler, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          child: Text(_answerText),
          color: Colors.amber,
          textColor: Colors.black,
          onPressed: _completionHandler,
        ));
  }
}
