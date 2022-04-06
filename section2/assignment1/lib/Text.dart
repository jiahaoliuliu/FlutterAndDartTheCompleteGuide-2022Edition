import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String textToShow;

  TextTitle(this.textToShow);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        textToShow,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
