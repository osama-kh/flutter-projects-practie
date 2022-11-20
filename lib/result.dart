import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'quiz.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final VoidCallback _resetQuiz;
  Result(this.resultscore, this._resetQuiz);
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
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: _resetQuiz, child: Text('Restart Quiz!')),
        ],
      ),
    );
  }
}
