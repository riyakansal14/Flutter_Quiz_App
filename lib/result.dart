import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  const Result(this._totalScore);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/undraw_approve_qwp7.png',
            height: 200,
            width: 200,
          ),
          Text(
            '    Your Total Score : ' + _totalScore.toString(),
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
    );
  }
}
