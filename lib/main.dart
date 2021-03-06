import 'package:flutter/material.dart';
import './riddles_list.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(RiddlesApp());

class RiddlesApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RiddlesAppState();
  }
}

class _RiddlesAppState extends State<RiddlesApp> {
  List<Map<String, Object>> _listOfRiddles = RiddlesList().getRiddles();
  var _riddlesIndex = 0;
  var _totalScore = 0;

  void _restartRiddlesQuiz() {
    setState(() {
      _riddlesIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerTheRiddle(int flag) {
    if (flag == 1) {
      _totalScore += 10;
    }
    setState(() {
      _riddlesIndex += 1;
    });
    if (_riddlesIndex < _listOfRiddles.length) {
      print("There is a next riddle!");
    } else {
      print("There are no more riddles!");
    }
  }

  Widget _createRiddle() {
    if (_riddlesIndex < _listOfRiddles.length) {
      return Quiz(
          riddles: _listOfRiddles,
          riddleIndex: _riddlesIndex,
          answerTheRiddle: _answerTheRiddle);
    } else {
      return Result(_totalScore, _restartRiddlesQuiz);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Riddles!"),
          backgroundColor: Color.fromRGBO(200, 255, 200, 0.5),
        ),
        body: _createRiddle(),
      ),
    );
  }
}
