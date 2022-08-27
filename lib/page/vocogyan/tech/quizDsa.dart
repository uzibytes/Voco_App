// 4(c)

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginuicolors/page/home.dart';
// import 'package:loginuicolors/page/ui/comingsoon.dart';
import '../quiz/StartQuiz.dart';

// import 'package:loginuicolors/page/story_telling/storytelling2.dart';

class DsaQuiz extends StatefulWidget {
  const DsaQuiz({Key? key}) : super(key: key);

  @override
  _DsaQuiz createState() => _DsaQuiz();
}

class _DsaQuiz extends State<DsaQuiz> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final flutterTts = FlutterTts();
  final player = AudioPlayer();
  bool _isSpeaking = false;
  final _controller = Text(
      "In computer science, a linked list is a linear collection of data elements whose order is not given by their physical placement in memory. Instead, each element points to the next. It is a data structure consisting of a collection of nodes which together represent a sequence.");

  void initlizeTts() {
    flutterTts.setLanguage("en-IN");
    flutterTts.setStartHandler(() {
      _isSpeaking = true;
    });
    flutterTts.setCompletionHandler(() {
      _isSpeaking = false;
    });
    flutterTts.setErrorHandler((message) {
      _isSpeaking = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initlizeTts();
  }

  void speak() async {
    {
      await flutterTts.speak(
          "In computer science, a linked list is a linear collection of data elements whose order is not given by their physical placement in memory. Instead, each element points to the next. It is a data structure consisting of a collection of nodes which together represent a sequence.");
    }
  }

  Future<void> stop() async {
    await flutterTts.stop();
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
        key: scaffoldKey,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0), // here the desired height
            child: AppBar(
              leading: Builder(
                builder: (BuildContext context) {
                  return TextButton(
                      onPressed: () async {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ));
                },
              ),
              title: Text(
                " Story Telling",
                style: GoogleFonts.lora(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
              actions: <Widget>[
                TextButton(
                    onPressed: () async {
                      Navigator.of(context).pop(true);
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )),
        body: SafeArea(
            child: Container(
          width: mediaQuery.size.width * 1,
          height: mediaQuery.size.height * 1,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/register.png'), fit: BoxFit.cover),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
              Widget>[
            Container(
              width: mediaQuery.size.width * 1,
              height: mediaQuery.size.height * 0.02,
            ),
            Container(
              width: mediaQuery.size.width * 1,
              height: mediaQuery.size.height * 0.6,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/storytelling.png'),
                    fit: BoxFit.fill),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: mediaQuery.size.width * 0.6,
                      height: mediaQuery.size.height * 0.02,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: mediaQuery.size.width * 0.6,
                      height: mediaQuery.size.height * 0.07,
                      // color: Colors.black

                      // color: Colors.white,
                      //add text in center
                      child: Center(
                        child: Text(
                          "Linked List",
                          style: GoogleFonts.lora(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: mediaQuery.size.width * 0.05),
                          // color: Colors.black),
                        ),
                      ),
                      // color: Color.fromARGB(255, 14, 11, 11),
                    )
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                          child: Column(children: [
                        // Container(
                        //   width: mediaQuery.size.width * 0.88,
                        //   height: mediaQuery.size.height * 0.3,
                        //   //add text
                        // ),
                        //add button
                        Container(
                          width: mediaQuery.size.width * 0.88,
                          height: mediaQuery.size.height * 0.35,
                          child: ElevatedButton(
                            child: Center(
                              child: Container(
                                width: mediaQuery.size.width * 0.84,
                                height: mediaQuery.size.height * 0.38,
                                child: Text(
                                  "In computer science, a linked list is a linear collection of data elements whose order is not given by their physical placement in memory. Instead, each element points to the next. It is a data structure consisting of a collection of nodes which together represent a sequence.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: mediaQuery.size.height * 0.03),
                                ),
                              ),
                            ),
                            onPressed: () {
                              _isSpeaking ? stop() : speak();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(248, 255, 5, 5),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: mediaQuery.size.width * 1,
                          height: mediaQuery.size.height * 0.03,
                        ),
                        Container(
                            width: mediaQuery.size.width * 1,
                            height: mediaQuery.size.height * 0.05,
                            color: Colors.amber,
                            child: Text(
                              " play a story quiz",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lora(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: mediaQuery.size.height * 0.03,
                              ),
                            )),
                      ])),
                    ]),
              ]),
            ),
            // SizedBox(
            //   width: mediaQuery.size.width * 1,
            //   height: mediaQuery.size.height * 0.02,
            // ),
            Container(
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                          width: mediaQuery.size.width * 0.48,
                          height: mediaQuery.size.height * 0.25,
                          // color: Color.fromARGB(255, 252, 65, 65),
                          child: SizedBox(
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new StartQuiz()));
                                    print('Button pressed ...');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(248, 156, 208, 52),
                                  ),
                                  child: Text(
                                    "YES",
                                    style: GoogleFonts.lora(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 70,
                                    ),
                                  )))),
                      Container(
                          width: mediaQuery.size.width * 0.48,
                          height: mediaQuery.size.height * 0.25,
                          child: SizedBox(
                              child: ElevatedButton(
                                  onPressed: () {
                                    //go to home
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()),
                                      (Route<dynamic> route) => false,
                                    );

                                    print('Button pressed ...');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(248, 212, 255, 251),
                                  ),
                                  child: Text(
                                    "NO",
                                    style: GoogleFonts.lora(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 70,
                                    ),
                                  )))),
                    ]),
              ]),
            ),
          ]),
        )));
  }
}
