import 'package:flutter/material.dart';
import './result.dart';

class QuestionText extends StatefulWidget {
  const QuestionText({Key? key}) : super(key: key);

  @override
  _QuestionTextState createState() => _QuestionTextState();
}

class _QuestionTextState extends State<QuestionText> {
  final List<String> _questionsList = [
    'Flutter is a ',
    'Who developed Flutter?',
    'Is Flutter an SDK?',
    'What are the advantages of Flutter?',
    'How many types of widgets are there in Flutter?',
    'Flutter cannot be used to develop apps for which of the following?',
    'What is the name of the command you use to verify you have setup your flutter environment correctly?',
    'The function is responsible for returning the widgets that are attached to the screen as a root of the widget tree and will be rendered on the screen.'
  ];

  final List<List<Map<String, Object>>> _choices = [
    [
      {'choice': 'an open-source backend toolkit', 'score': 0},
      {'choice': 'an open-source DBMS', 'score': 0},
      {'choice': 'an open-source UI toolkit', 'score': 10},
      {'choice': 'All of the above', 'score': 0}
    ],
    [
      {'choice': 'IBM', 'score': 0},
      {'choice': 'Google', 'score': 10},
      {'choice': 'Facebook', 'score': 0},
      {'choice': 'Microsoft', 'score': 0}
    ],
    [
      {'choice': 'Yes', 'score': 10},
      {'choice': 'No', 'score': 0},
      {'choice': 'Maybe', 'score': 0},
      {'choice': 'Cannot say', 'score': 0}
    ],
    [
      {'choice': 'Cross-platform Development', 'score': 0},
      {'choice': 'Faster Development', 'score': 0},
      {'choice': 'UI Focused', 'score': 0},
      {'choice': 'All of the above', 'score': 10}
    ],
    [
      {'choice': '3', 'score': 0},
      {'choice': '2', 'score': 10},
      {'choice': '5', 'score': 0},
      {'choice': '0', 'score': 0}
    ],
    [
      {'choice': 'Web', 'score': 0},
      {'choice': 'Mobile', 'score': 0},
      {'choice': 'Voice Assistants', 'score': 10},
      {'choice': 'Desktop', 'score': 0}
    ],
    [
      {'choice': 'flutter nurse', 'score': 0},
      {'choice': 'flutter surgeon', 'score': 0},
      {'choice': 'flutter run', 'score': 0},
      {'choice': 'flutter doctor', 'score': 10}
    ],
    [
      {'choice': 'Container', 'score': 0},
      {'choice': 'runApp', 'score': 10},
      {'choice': 'main', 'score': 0},
      {'choice': 'SizedBox', 'score': 0}
    ]
  ];
  int _index = 0;
  int _totalScore = 0;

  void _answered(int score){
    _totalScore += score;
    setState(() => _index++);
  }


  @override
  Widget build(BuildContext context) {
    return (_index >= 8)
    ? Result(_totalScore)
    : Column(children: [
        Text(
          _questionsList[_index],
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ..._choices[_index]
          .map((aChoice) => ElevatedButton(
          child: Text(aChoice['choice'].toString()),
          onPressed: () => _answered(
              int.parse(aChoice['score'].toString())),
          style: ElevatedButton.styleFrom(
              primary: Colors.blue[600], //background color of button
              side: const BorderSide(
                  width: 3,
                  color: Colors.white), //border width and color
              elevation: 3, //elevation of button
              shape: RoundedRectangleBorder(
                //to set border radius to button
                  borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.all(30),
              textStyle: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold))))
          .toList(),
    ],);
  }
}
