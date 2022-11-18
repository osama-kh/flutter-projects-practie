import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import 'quiz.dart';
import 'result.dart';
//void main() {
// runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _quistion = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Lion', 'score': 4},
        {'text': 'Spider', 'score': 5},
        {'text': 'Sheep', 'score': 7}
      ]
    },
    {
      'questionText': 'what\'s your favorite instructor?',
      'answers': [
        {'text': 'Adam', 'score': 1},
        {'text': 'David', 'score': 6},
        {'text': 'Mohamed', 'score': 9},
        {'text': 'Max', 'score': 7}
      ]
    }
  ];
  var _indx = 0;
  var _totlscore = 0;
  void _answerQuestion(int score) {
    //var flag = true;
    _totlscore += score;
    setState(() {
      _indx++;
    });

    if (_indx < _quistion.length) {
      print('we have more questions!');
    } else {
      print('no more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _indx < _quistion.length
            ? Quiz(
                answerQuestion: (_answerQuestion),
                indx: _indx,
                quistion: _quistion)
            : Result(_totlscore),
      ),
    );
  }
}
