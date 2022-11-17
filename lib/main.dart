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
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': ['Rabbit', 'Lion', 'Spider', 'Sheep']
    },
    {
      'questionText': 'what\'s your favorite instructor?',
      'answers': ['Adam', 'David', 'Mohamed', 'Max']
    }
  ];
  var _indx = 0;
  void _answerQuestion() {
    //var flag = true;

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
                answerQuestion: _answerQuestion,
                indx: _indx,
                quistion: _quistion)
            : Result(),
      ),
    );
  }
}
