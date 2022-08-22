import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';


class StartQuiz extends StatefulWidget {
const StartQuiz({Key? key}) : super(key: key);

@override
State<StatefulWidget> createState() {
	return _StartQuiz();
}
}

class _StartQuiz extends State<StartQuiz> {
final _questions = const [
    {
      'questionText': 'Who is prime minister of india?',
      'answers': [
        {'text': 'Narendra Modi', 'score': 1},
        {'text': 'Sonia Gandhi', 'score': 0},
        {'text': 'Nitish Kumar', 'score': 0},
        {'text': 'Rahul Gandhi', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is chief minister of bihar?',
      'answers': [
        {'text': 'Lalu Yadav', 'score': 0},
        {'text': 'Tejasvi Yadav', 'score': 0},
        {'text': 'Nitish Kumar', 'score': 1},
        {'text': 'Rabdi devi', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is president of india?',
      'answers': [
        {'text': 'RamNath kovind', 'score': 0},
        {'text': 'Droupadi Murmu', 'score': 1},
        {'text': 'Pratibha Patil', 'score': 0},
        {'text': 'P.Chitambaram', 'score': 0},
      ],
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
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
