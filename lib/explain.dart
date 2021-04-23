/*import 'package:flutter/material.dart';

// void main => runApp(MyApp());
void main() {
  runApp(
      MyApp()); // Run app is a function defined by flutter and it runs our flutter app.
  // runApp takes a widget and draws it on to the screen.
}

// MyApp is a Widget class cuz it extended widget and MyApp class also returns a widget
/* Note: Every Widget must extends Stateless widget or Stateful widget 
   and both stateless and stateful will force you to call build method.
  cuz flutter will always call the build method of your class to draw something on screen.
  build method is always responsible for returning a new widget*/
class MyApp extends StatelessWidget {
  // here MaterialApp and Text are also a class that takes args.
  @override // it means that we are overriding build method that is provided by the Stateless widget class.
  Widget build(
      BuildContext context) // context is a object of type build context.
  {
    return MaterialApp(
      home:
          Scaffold // scaffold is a widget and it creates a base page design.
          (appbar: AppBar(),
          body: Text('this is a text widget in the body')), // here body only takes a single widget
    );
    // home is a core widget that flutter will bring on to the screen.
  }
}

Note:  You cant pass a void function in onPressed fuction in any button. // itll give you an error.
instead remove the paranthesis from the fuction so it can be used 
*/
