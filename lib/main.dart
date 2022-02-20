import 'package:flutter/material.dart';
import './questionText.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Text('Flutter Quiz',
          textAlign: TextAlign.justify,
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontFamily: 'PatuaOne',
              fontSize: 30,
            ),
          ),
        ),
        body: const QuestionText(),
      ),
    );
  }
}
