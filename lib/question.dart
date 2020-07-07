import 'package:flutter/material.dart';

@immutable
class Question extends StatelessWidget {
  final String question;
  final List<String> answers;
  Question({@required this.question, this.answers});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(15),
      child: Text(
        this.question,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
