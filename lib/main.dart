import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Which is greater than 4?',
      'answers': [
        {'text': '5', 'score': 1},
        {'text': '-5', 'score': 2},
        {'text': '-1/2', 'score': 3},
        {'text': '-25', 'score': 4},
      ]
    },
    {
      'questionText': 'Which is the smallest?',
      'answers': [
        {'text': '-1', 'score': 5},
        {'text': '-1/2', 'score': 6},
        {'text': '0', 'score': 7},
        {'text': '3', 'score': 8},
      ]
    },
    {
      'questionText': 'Combine terms: 12a + 26b -4b – 16a.',
      'answers': [
        {'text': '4a + 22b', 'score': 5},
        {'text': '-28a + 30b', 'score': 6},
        {'text': ' -4a + 22b', 'score': 7},
        {'text': '28a + 30b', 'score': 8},
      ]
    },
    {
      'questionText': 'Simplify: (4 – 5) – (13 – 18 + 2)',
      'answers': [
        {'text': '-1', 'score': 5},
        {'text': '-2', 'score': 6},
        {'text': ' 1', 'score': 7},
        {'text': '2', 'score': 8},
      ]
    },
    
    {
      'questionText': '10-2 means …………. .',
      'answers': [
        {'text': ' milli', 'score': 5},
        {'text': 'centi', 'score': 6},
        {'text': 'micro', 'score': 7},
        {'text': ' deci', 'score': 8},
      ]
    },
    {
      'questionText': 'The square root of 0.0081 is ………… .',
      'answers': [
        {'text': ' 0.09', 'score': 5},
        {'text': '0.9', 'score': 6},
        {'text': ' 0.91', 'score': 7},
        {'text': ' 0.009', 'score': 8},
      ]
    },
  ];
  var _answerIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _answerIndex = _answerIndex + 1;
    });

    print(_answerIndex);

    if (_answerIndex < _questions.length) {
      print('You have more questions.');
    } else {
      print("You have done!");
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: Text('Quiz Test App'),
        ),
        body: _answerIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                answerIndex: _answerIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}