import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main(List<String> args) {
  runApp(FirstApp());
}

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstAppState();
  }
}

class FirstAppState extends State<FirstApp> {
  static const questions = [
    {
      "questionText": "Question 1",
      'answers': ["Answer 1", "Answer 2", "Answer3"],
    },
    {
      "questionText": "Question 2",
      'answers': ["Answer 1", "Answer 2", "Answer3"],
    },
    {
      "questionText": "Question 3",
      'answers': ["Answer 1", "Answer 2", "Answer3"],
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
      if (_questionIndex >= questions.length) {
        _questionIndex = 0;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]["questionText"] as String),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return (Answer(_answerQuestion, answer));
            }).toList()
          ],
        ),
      ),
    );
  }
}
