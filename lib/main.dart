import 'package:flutter/material.dart';
import './question.dart';
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
    var _quistion = [
      'what\'s your favorite color?',
      'what\'s your favorite animal?',
    ];

    //throw UnimplementedError();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(_quistion[_indx]),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1')),
            ElevatedButton(
                onPressed: () => print("answer 2 chosen"),
                child: Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  print("answer 3");
                },
                child: Text('Answer 3'))
          ],
        ),
      ),
    );
  }
}
