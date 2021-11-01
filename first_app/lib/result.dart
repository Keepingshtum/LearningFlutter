import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String getResultPhrase() {
    var resultText = "You're a novice!";
    if (resultScore >= 8) {
      resultText = "You're an expert!";
    } else if (resultScore >= 6) {
      resultText = "You're on the way to being an expert!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            getResultPhrase(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetQuiz, child: Text("Restart Quiz"))
        ],
      ),
    );
  }
}
