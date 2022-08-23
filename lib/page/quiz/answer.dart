import 'package:flutter/material.dart' 
show BuildContext, ButtonStyle, Colors, ElevatedButton, Key, MaterialStateProperty, SizedBox, StatelessWidget, Text, TextStyle, Widget;

class Answer extends StatelessWidget {
final Function selectHandler;
final String answerText;

const Answer(this.selectHandler, this.answerText, {Key? key})
	: super(key: key);

@override
Widget build(BuildContext context) {
	// use SizedBox for white space instead of Container
	return SizedBox(
	width: double.infinity,
	child: ElevatedButton(
		onPressed: selectHandler(),
		style: ButtonStyle(
			textStyle:
				MaterialStateProperty.all(const TextStyle(color: Colors.white)),
			backgroundColor: MaterialStateProperty.all(Colors.green)),
		child: Text(answerText),
	),

	// RaisedButton is deprecated and should not be used
	// Use ElevatedButton instead

	// child: RaisedButton(
	// color: const Color(0xFF00E676),
	// textColor: Colors.white,
	// onPressed: selectHandler(),
	// child: Text(answerText),
	// ), //RaisedButton
	); //Container
}
}
