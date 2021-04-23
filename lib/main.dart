import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

//here the "_" (dash) turns MyAppState class into a private class.
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          'Which one of the following is a FIFO order data structure',
      'answers': [
        {'text': 'Queue', 'score': 1},
        {'text': 'Map', 'score': 0},
        {'text': 'Stack', 'score': 0}
      ],
    },
    {
      'questionText':
          "Which one of the following is a LIFO order data structure",
      'answers': [
        {'text': 'Map', 'score': 0},
        {'text': 'Queue', 'score': 0},
        {'text': 'Stack', 'score': 1},
      ],
    },
    {
      'questionText':
          'Access time of a binary search tree may go worse in terms of time complexity upto',
      'answers': [
        {'text': 'Ο(n log n)', 'score': 0},
        {'text': 'Ο(n)', 'score': 1},
        {'text': 'Ο(1)', 'score': 0}
      ],
    },
    {
      'questionText': 'Which of the following is linear data structure',
      'answers': [
        {'text': 'Arrays', 'score': 1},
        {'text': 'Trees', 'score': 0},
        {'text': 'Graphs', 'score': 0},
      ],
    },
    {
      'questionText': 'A function which calls itself is called',
      'answers': [
        {'text': 'Iteration', 'score': 0},
        {'text': 'Recursion', 'score': 1},
        {'text': 'Algorithm', 'score': 0},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    // setState is the function that forces the flutter to rerender some widget that we pass.
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //const is a compiletime constant value. And it implicitly means that it is a runtime constant value too.
    // if you put const before the variable, then the variable is constant
    // if you put const before values, the values are constant
    //dart saves the object only once and then use pointers to access it to save memory
    // dart saves the pointers or adresses of the object in the memory not the object itself

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Quiz App',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      // here childern takes a list (array) of widgets ie more than one widget
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
