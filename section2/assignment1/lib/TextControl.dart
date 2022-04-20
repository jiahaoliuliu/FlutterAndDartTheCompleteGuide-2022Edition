import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function textControlHandler;

  TextControl(this.textControlHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: textControlHandler,
        child: Text("Reveal"),
      ),
    );
  }
}
