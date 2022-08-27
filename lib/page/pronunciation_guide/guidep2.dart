//page(4.(a)(i));
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginuicolors/page/home.dart';
import 'package:loginuicolors/page/pronunciation_guide/guidep1.dart';

// ignore: must_be_immutable
class pronunciation2 extends StatefulWidget {
  pronunciation2(
      {required this.quotesList,
      required this.pageNo,
      required this.recordingPath});
  final List<String> quotesList;
  final String recordingPath;

  int pageNo;

  @override
  _Demo2WidgetState createState() => _Demo2WidgetState();
}

class _Demo2WidgetState extends State<pronunciation2> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool _isPlaying = false;
  bool _isSpeaking = false;

  final player = AudioPlayer();

  final FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    _isPlaying = false;
    _isSpeaking = false;
    super.initState();
  }

  @override
  void dispose() {
    player.stop();
    flutterTts.stop();
    super.dispose();
  }

  Future<void> _startPlaying() async {
    await player.play(DeviceFileSource(widget.recordingPath));
    setState(() {
      _isPlaying = true;
    });
    await player.onPlayerComplete.listen((event) => {
          setState(() {
            _isPlaying = false;
          })
        });
  }

  Future<void> _stopPlaying() async {
    await player.stop();
    setState(() {
      _isPlaying = false;
    });
  }

  Future<void> _speakQuote() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(0.5);
    var result = await flutterTts.speak(widget.quotesList[widget.pageNo]);
    if (result == 1) {
      setState(() {
        _isSpeaking = true;
      });
    }
    flutterTts.setCompletionHandler(() {
      setState(() {
        _isSpeaking = false;
      });
    });
  }

  Future<void> _stopSpeaking() async {
    await flutterTts.stop();
    setState(() {
      _isSpeaking = false;
    });
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
                "Pronunciation Guide This page is divided into 4 quadrants. Click on top left to go back, click on top right to go next, click bottom left to listen to Voco and click bottom right to listen to your audio.",
                style: GoogleFonts.lora(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 1,
                    color: Colors.blue),
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
              image: AssetImage('assets/register.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: mediaQuery.size.width * 1,
                  height: mediaQuery.size.height * 0.02,
                ),
                Container(
                  width: mediaQuery.size.width * 1,
                  height: mediaQuery.size.height * 0.39,
                  // color: Colors.black,
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: mediaQuery.size.width * 0.48,
                            height: mediaQuery.size.height * 0.39,
                            child: SizedBox(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(248, 212, 255, 251),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.arrow_circle_left_sharp,
                                      color: Color.fromARGB(255, 150, 36, 36),
                                      size: 80.0,
                                    ), // icon
                                    Text(
                                      "Back",
                                      style: GoogleFonts.lora(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 20.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                              width: mediaQuery.size.width * 0.48,
                              height: mediaQuery.size.height * 0.39,
                              child: SizedBox(
                                  child: ElevatedButton(
                                onPressed: () {
                                  if (widget.quotesList.length - 1 ==
                                      widget.pageNo) {
                                    // go back to home screen sicne quiz ended
                                    //push and remove untill home page
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()),
                                      (Route<dynamic> route) => false,
                                    );
                                  } else {
                                    // increment pageNo and call guide 1 prepagain
                                    widget.pageNo++;
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PronucitionGuide(
                                            quotesList: widget.quotesList,
                                            pageNo: widget.pageNo),
                                      ),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(248, 212, 255, 251),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.arrow_circle_right_sharp,
                                      color: Color.fromARGB(255, 150, 36, 36),
                                      size: 80.0,
                                    ), // icon
                                    Text(
                                      "Next",
                                      style: GoogleFonts.lora(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 20.0,
                                      ),
                                    )
                                  ],
                                ),
                              ))),
                        ]),
                  ]),
                ),
                SizedBox(
                  width: mediaQuery.size.width * 1,
                  height: mediaQuery.size.height * 0.03,
                ),
                Container(
                  width: mediaQuery.size.width * 1,
                  height: mediaQuery.size.height * 0.39,
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                              width: mediaQuery.size.width * 0.48,
                              height: mediaQuery.size.height * 0.39,
                              child: SizedBox(
                                  child: ElevatedButton(
                                onPressed: () async {
                                  // play the quote and show the play button
                                  if (_isPlaying) {
                                    await _stopPlaying();
                                  }
                                  _isSpeaking
                                      ? await _stopSpeaking()
                                      : await _speakQuote();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(248, 212, 255, 251),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      // TextToSpeechIcon.text_speech,
                                      _isSpeaking
                                          ? Icons.pause_circle_filled
                                          : Icons.play_circle_filled,
                                      color: Color.fromARGB(255, 150, 36, 36),
                                      size: 80.0,
                                    ), // icon
                                    Text(
                                      "Listen to VoCo",
                                      style: GoogleFonts.lora(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15.0,
                                      ),
                                    )
                                  ],
                                ),
                              ))),
                          Container(
                              width: mediaQuery.size.width * 0.48,
                              height: mediaQuery.size.height * 0.39,
                              child: SizedBox(
                                  child: ElevatedButton(
                                onPressed: () async {
                                  print('Button pressed ...');
                                  debugPrint(
                                      "Got file: ${widget.recordingPath}");
                                  if (_isSpeaking) {
                                    await _stopSpeaking();
                                  }
                                  _isPlaying
                                      ? await _stopPlaying()
                                      : await _startPlaying();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(248, 212, 255, 251),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      _isPlaying
                                          ? Icons.pause
                                          : Icons.play_circle_outline,
                                      color: Color.fromARGB(255, 150, 36, 36),
                                      size: 80.0,
                                    ), // icon
                                    Text(
                                      "listen to your own audio",
                                      style: GoogleFonts.lora(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15.0,
                                      ),
                                    )
                                  ],
                                ),
                              ))),
                        ]),
                  ]),
                ),
              ]),
        )));
  }
}

class TextToSpeechIcon {
  TextToSpeechIcon._();

  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

  static const IconData text_speech =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
