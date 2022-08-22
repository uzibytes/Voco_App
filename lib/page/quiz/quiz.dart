import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
final List<Map<String, Object>> questions;
final int questionIndex;
final Function answerQuestion;

const Quiz({
	Key? key,
	required this.questions,
	required this.answerQuestion,
	required this.questionIndex,
}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Column(
	children: [
		Question(
		questions[questionIndex]['questionText'].toString(),
		), //Question
		...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
			.map((answer) {
		return Answer(
			() => answerQuestion(answer['score']), answer['text'].toString());
		}).toList()
	],
	); //Column
}
}
