/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite anime?',
      "What's your all time favorite character in an anime?"
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Muazzy\'s First Flutter App'),
        backgroundColor: Colors.deepPurple,
      ),
      // here childern takes a list (array) of widgets ie more than one widget
      body: Column(
        children: [
          Text(questions.elementAt(questionIndex)),
          //here .elementAt(i) does the same thing as questions[i] does
          RaisedButton(
              child: Text('Button1'),
              color: Colors.amber,
              onPressed: answerQuestion),
          /*here we remove the parantheses of the function to make it work as a pointer 
               and so that the function only runs when the user clicks it not when the flutter compiles etc*/
          RaisedButton(
              child: Text('Button2'),
              color: Colors.pink,
              onPressed: () => print('Button2 chosen!')),
          RaisedButton(
              child: Text('Button3'),
              color: Colors.indigo,
              onPressed: () {
                //this is another way of calling a anonymous function.
                print('Button3 chosen!');
              }),
        ],
      ),
    ));
  }
}
*/
