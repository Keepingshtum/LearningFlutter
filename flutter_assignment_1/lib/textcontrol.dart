// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback buttonCallback;

  TextControl(this.buttonCallback);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonCallback,
      child: const Text("Change Text"),
    );
  }
}
