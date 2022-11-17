//import 'dart:html';
import 'package:flutter/src/widgets/framework.dart';
import 'question.dart';
import 'answer.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quistion;
  final int indx;
  final VoidCallback answerQuestion;
  Quiz(
      {required this.quistion,
      required this.answerQuestion,
      required this.indx});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(quistion[indx]['questionText'] as String),
        ...(quistion[indx]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
