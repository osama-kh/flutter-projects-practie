import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'quiz.dart';
import '';

class Result extends StatelessWidget {
  final int resultscore;
  Result(this.resultscore);
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultscore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultscore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultscore <= 16) {
      resultText = 'You are so ... Strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
