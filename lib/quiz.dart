import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.answerQuestion,
      @required this.questionIndex,
      @required this.questions});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Question(
            questions[questionIndex]['questionText'],
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            //here we use annonymous function to store refrence to a parametrized function
            //cuz to store the score value when the button is pressed(ie onPressed is triggered).
            //otherwise we cant directly pass the score variable in the answerQuestion function directly
            // so we use a annoymous function
            return Answer(() => answerQuestion(answer['score']), answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
