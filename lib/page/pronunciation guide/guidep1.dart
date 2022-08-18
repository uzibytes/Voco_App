//page(4(a));
import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:loginuicolors/page/home.dart';
import 'package:loginuicolors/page/pronunciation%20guide/guidep2.dart';

// ignore: must_be_immutable
class PronucitionGuide extends StatefulWidget {
  PronucitionGuide({required this.quotesList, required this.pageNo});
  final List<String> quotesList;
  int pageNo;
  @override
  _Demo2WidgetState createState() => _Demo2WidgetState();
}

class _Demo2WidgetState extends State<PronucitionGuide> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final recorder = FlutterSoundRecorder();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
        key: scaffoldKey,
        // backgroundColor: Color(0xFFF1F8F4),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0), // here the desired height
            child: AppBar(
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      //push and remove untill home page
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                        (Route<dynamic> route) => false,
                      );
                    },
                  );
                },
              ),
              title: Text(
                "   VoCo",
                style: GoogleFonts.lora(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.arrow_circle_right), onPressed: () => {}),
              ],
            )),
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: mediaQuery.size.width * 1,
                  height: mediaQuery.size.height * 0.04,
                ),
                Container(
                  width: mediaQuery.size.width * 1,
                  height: mediaQuery.size.height * 0.04,
                  color: Color.fromARGB(255, 249, 217, 217),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: mediaQuery.size.width * 0.8,
                            height: mediaQuery.size.height * 0.03,
                            child: Text(
                              "  Pronunciation Guide",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lora(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: mediaQuery.size.height * 0.02,
                              ),
                            )),
                      ],
                    ),
                  ]),
                ),
                SizedBox(
                  height: mediaQuery.size.height * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/vocogft.gif'),
                        fit: BoxFit.cover),
                  ),
                  height: mediaQuery.size.height * 0.39,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: mediaQuery.size.width * 0.4,
                          height: mediaQuery.size.height * 0.35,
                        ),
                        Container(
                          width: mediaQuery.size.width * 0.5,
                          height: mediaQuery.size.height * 0.32,
                          color: Color.fromARGB(255, 249, 217, 217),
                          child: Text(
                            widget.quotesList[widget.pageNo],
                            style: GoogleFonts.lora(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: mediaQuery.size.height * 0.02,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                SizedBox(
                  height: mediaQuery.size.height * 0.02,
                ),
                Container(
                    width: mediaQuery.size.width * 1,
                    height: mediaQuery.size.height * 0.3,
                    color: Color.fromARGB(255, 249, 217, 217),
                    child: SizedBox(
                      child: Container(
                          width: mediaQuery.size.width * 0.48,
                          height: mediaQuery.size.height * 0.39,
                          child: SizedBox(
                              child: GestureDetector(
                            onLongPressDown: (details) async {
                              print('Recording started');
                              //
                              // start recording the audio
                            },
                            onLongPressUp: () async {
                              print('Recording stopped');
                              // stop recording the audio

                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new pronunciation2(
                                    pageNo: widget.pageNo,
                                    quotesList: widget.quotesList,
                                  ),
                                ),
                              );
                            },
                            // onLongPress: () {
                            //   // start recording
                            //   print('Recording started');
                            // },
                            // onLongPressCancel: () => {
                            //   // stop recording
                            //   print('Recording stopped')
                            // },
                            child: Icon(
                              Icons.mic,
                              color: Colors.white,
                              size: 60.0,
                            ),
                          ))),
                    )),
              ]),
        )));
  }
}
