import 'package:flutter/material.dart';

//void main() {
// runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var indx = 0;
  void answerQuestion() {
    indx++;
    print(indx);
  }

  @override
  Widget build(BuildContext context) {
    var quistion = [
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
            Text(quistion[indx]),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
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
