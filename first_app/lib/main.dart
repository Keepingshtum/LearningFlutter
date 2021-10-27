import 'package:flutter/material.dart';

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
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
      if (questionIndex >= questions.length) {
        questionIndex -= 1;
      }
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1")),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 2")),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
