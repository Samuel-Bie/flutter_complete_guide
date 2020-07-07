import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  final _questions = [
    {
      'question': "What's yout favaorite color?",
      "answers": [
        {'text': 'Blue', 'score': 13},
        {'text': 'Red', 'score': 9},
        {'text': 'White', 'score': 5},
        {'text': 'Green', 'score': 1},
      ]
    },
    {
      'question': "What's yout favaorite animal?",
      'answers': [
        {'text': 'Dog', 'score': 13},
        {'text': 'Horse', 'score': 9},
        {'text': 'Cat', 'score': 5},
        {'text': 'Fish', 'score': 1}
      ]
    },
    {
      'question': "What's yout favaorite movie?",
      'answers': [
        {'text': 'Transformers', 'score': 13},
        {'text': 'Fast Furios', 'score': 9},
        {'text': 'Homeless', 'score': 5},
        {'text': 'Fireman', 'score': 1}
      ]
    },
  ];
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: !(_questionIndex >= _questions.length)
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                callback: _answerQuestion,
              )
            : Result(this._totalScore, callback: _restartQuiz),
      ),
    );
  }
}
