import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s yout favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 10},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 4}
      ]
    },
    {
      'questionText': 'Who\'s yout favorite insturctor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Ridwan', 'score': 1},
        {'text': 'Liyana', 'score': 3},
        {'text': 'Lion', 'score': 4}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print(_totalScore);
    if (_questionIndex < _questions.length) {
      print('We have more question!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            backgroundColor: Colors.pink[200],
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
