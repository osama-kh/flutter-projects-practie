import 'package:flutter/material.dart';
//import 'dart:html';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          //foregroundColor: Color
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
