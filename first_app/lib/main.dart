import 'package:flutter/material.dart';
import './question.dart';

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
  var questions = ["Question 1", "Question 2", "Question 3"];
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
      if (_questionIndex >= questions.length) {
        _questionIndex -= 1;
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
            Question(questions[_questionIndex]),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1")),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 2")),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
