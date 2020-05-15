import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> riddles;
  final int riddleIndex;
  final Function answerTheRiddle;

  Quiz(
      {@required this.riddles,
      @required this.riddleIndex,
      @required this.answerTheRiddle});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Question(riddles[riddleIndex]['riddle']),
        ...(riddles[riddleIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerTheRiddle(answer['flag']), answer['text']);
        }).toList()
      ],
    );
  }
}
