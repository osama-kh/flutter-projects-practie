import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
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
  var _indx = 0;
  void _answerQuestion() {
    setState(() {
      _indx++;
    });

    print(_indx);
  }

  @override
  Widget build(BuildContext context) {
    var quistion = [
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

    //throw UnimplementedError();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(quistion[_indx]['questionText'] as String),
            ...(quistion[_indx]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
