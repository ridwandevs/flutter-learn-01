import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      color: Colors.black,
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
