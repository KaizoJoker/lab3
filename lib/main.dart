import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'Whats your favorite movie ?',
      'answers': [
        {'text': 'Tetris', 'score': 10},
        {'text': 'MissionImposible', 'score': 5},
        {'text': 'Harry Poter', 'score': 3},
        {'text': 'Unlocked', 'score': 1}
      ]
    },
    {
      'questionText': 'Whats your favorite Lecturer ?',
      'answers': [
        {'text': 'DNKY', 'score': 10},
        {'text': 'DR.SALMI', 'score': 5},
        {'text': 'DR.JAMES', 'score': 3},
        {'text': 'DR.ERZAM', 'score': 1}
      ]
    },
    {
      'questionText': 'What  is your favorite  Student  ?',
      'answers': [
        {'text': 'KIMI', 'score': 10},
        {'text': 'ZUL', 'score': 5},
        {'text': 'ZULHAKIMI', 'score': 3},
        {'text': 'KIM', 'score': 1}
      ]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });

    _totalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 5, 230, 13)),
        ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter App Widget Lab 3',
            style: TextStyle(fontSize: 15),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}