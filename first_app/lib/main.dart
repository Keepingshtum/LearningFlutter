import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  static const _questions = [
    {
      "questionText": "Question 1",
      'answers': [
        {"text": "Answer 1", "score": 1},
        {"text": "Answer 2", "score": 2},
        {"text": "Answer 3", "score": 3}
      ],
    },
    {
      "questionText": "Question 2",
      'answers': [
        {"text": "Answer 1", "score": 1},
        {"text": "Answer 2", "score": 2},
        {"text": "Answer 3", "score": 3}
      ],
    },
    {
      "questionText": "Question 3",
      'answers': [
        {"text": "Answer 1", "score": 1},
        {"text": "Answer 2", "score": 2},
        {"text": "Answer 3", "score": 3}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
    print(_questionIndex);
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_questions, _answerQuestion, _questionIndex)
              : Result(_totalScore, _restartQuiz)),
    );
  }
}
