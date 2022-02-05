import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void answer1() {
    print('Answer chosen!');
  }

  var _questionIndex = 0;
  void _answerquestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['are you John?', 'Are u bob?', 'Are u Tom?'];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Tierra"),
            ),
            body: Column(
              children: [
                Question(questions[_questionIndex]),
                Answer(_answerquestions),
                Answer(_answerquestions),
                Answer(_answerquestions),
              ],
            )));
  }
}
