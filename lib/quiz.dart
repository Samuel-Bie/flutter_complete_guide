import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    Key key,
    @required List<Map<String, Object>> questions,
    @required int questionIndex,
    this.callback,
  })  : _questions = questions,
        _questionIndex = questionIndex,
        super(key: key);

  final List<Map<String, Object>> _questions;
  final int _questionIndex;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question: _questions[_questionIndex]['question']),
        ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map((e) {
          var score = e['score'];
          return Answer(e['text'], callback: () => this.callback(score));
        }).toList()
        // Answer('text')
      ],
    );
  }
}
