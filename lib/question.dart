import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //final is a runtime constant value.
  final questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    // We used container here cuz the text widget wasnt using all the screen and cuz of that it wasnt alligning to the center
    // container widget allows us to align and space things ie margin and padding etc
    return Container(
        margin: EdgeInsets.all(10),
        // here double.infinity takes full width of the screen and that now solves our problem.
        width: double.infinity,
        child: Text(questionText,
            style: TextStyle(
                fontSize: 23,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center));
  }
}
