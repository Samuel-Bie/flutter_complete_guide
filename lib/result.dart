import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final scoreResult;
  final Function callback;

  Result(this.scoreResult, {this.callback});

  String get resultPhrase {
    var text = 'You did';
    if (this.scoreResult <= 8)
      text = 'You are awesome and fine';
    else if (this.scoreResult <= 12)
      text = 'You are fine';
    else if (this.scoreResult <= 16)
      text = 'You are... strange';
    else
      text = 'You are... hum';
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            this.resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
              onPressed: this.callback,
              textColor: Colors.blue,
              child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
