// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'textcontrol.dart';

class BodyText extends StatelessWidget {
  final List<String> text;
  final int textPointer;
  final VoidCallback buttoncallback;
  BodyText(this.text, this.textPointer, this.buttoncallback);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(text[textPointer]), TextControl(buttoncallback)],
    );
  }
}
