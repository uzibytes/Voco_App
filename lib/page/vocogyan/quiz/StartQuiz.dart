// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:loginuicolors/page/home.dart';
import 'package:loginuicolors/page/quiz/question.dart';

class StartQuiz extends StatefulWidget {
  @override
  _StartQuizState createState() => _StartQuizState();
}

class _StartQuizState extends State<StartQuiz> {
  var score = 0;
  var n = 0;

  // you can get this list from fireabase,
// infirebase u can use key : value so try to do the same here
  List que_list = [
    Questions("Linked List Are Similar to An Array ?", false),
    Questions("Voco is for deafs.", false),
    Questions("Voco is built with flutter.", true),
    Questions(
        "Voco helps people to learn new languages and new technologies.", true),
    Questions(
        "Voco helps people to learn new languages and new technologies.", true),
    Questions(
        "Voco helps people to learn new languages and new technologies.", true),
  ];

  void checkAnswer(bool choice, BuildContext ctx) {
    if (choice == que_list[n].ans) {
      //debugPrint("Correct");
      score = score + 1;
      final snackbar = SnackBar(
        content: Text("Correct Answer"),
        duration: Duration(milliseconds: 500),
        backgroundColor: Colors.green,
      );
      Scaffold.of(ctx).showSnackBar(snackbar);
    } else {
      final snackbar = SnackBar(
        content: Text("Wrong Answer"),
        duration: Duration(milliseconds: 500),
        backgroundColor: Colors.red,
      );
      Scaffold.of(ctx).showSnackBar(snackbar);
    }
    setState(() {
      if (n < que_list.length - 1) {
        n = n + 1;
      } else {
        // show modail dailog with score
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Quiz Completed"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    score >= que_list.length / 2
                        ? Icon(Icons.check_circle,
                            color: Colors.green, size: 50)
                        : Icon(Icons.cancel, color: Colors.red, size: 50),
                    Text("Score $score/${que_list.length}"),
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Reset Quiz"),
                    onPressed: () {
                      reset();
                      Navigator.of(context).pop();
                    },
                  ),
                  FlatButton(
                    child: Text("Go to Home page"),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                    },
                  )
                ],
              );
            });
      }
    });
  }

  void reset() {
    setState(() {
      n = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Builder(
        builder: (ctx) => Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Score : $score/${que_list.length} ",
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () => reset(),
                    child: Text(
                      "Reset ",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.brown),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '${n + 1}.  ${que_list[n].que}',
                      style: TextStyle(fontSize: 15.0),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "True",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                    onPressed: () => checkAnswer(true, ctx),
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  RaisedButton(
                    child: Text(
                      "False",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                    onPressed: () => checkAnswer(false, ctx),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
