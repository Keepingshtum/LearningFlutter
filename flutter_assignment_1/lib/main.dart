import "package:flutter/material.dart";
import 'bodytext.dart';

void main(List<String> args) {
  runApp(FirstAppAss());
}

class FirstAppAss extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstAppAssState();
  }
}

class FirstAppAssState extends State<FirstAppAss> {
  final _bodyTextPool = ["BodyText1", "BodyText2", "BodyText3"];
  var _bodyTextPointer = 0;

  void _changeBodyText() {
    setState(() {
      _bodyTextPointer += 1;
      if (_bodyTextPointer > 2) {
        _bodyTextPointer = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("This is an AppBar")),
        body: BodyText(_bodyTextPool, _bodyTextPointer, _changeBodyText),
      ),
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        // Define the default font family.
        fontFamily: 'Georgia',
      ),
    );
  }
}
