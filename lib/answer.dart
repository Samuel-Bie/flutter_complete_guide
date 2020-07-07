import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function callback;
  final String text;

  Answer(this.text, {this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.text),
        onPressed: callback,
      ),
    );
  }
}
