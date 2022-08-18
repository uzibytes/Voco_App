//page(4.(a)(i));
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginuicolors/page/home.dart';
import 'package:loginuicolors/page/pronunciation%20guide/guidep1.dart';

// ignore: must_be_immutable
class pronunciation2 extends StatefulWidget {
  pronunciation2({required this.quotesList, required this.pageNo});
  final List<String> quotesList;

  int pageNo;

  @override
  _Demo2WidgetState createState() => _Demo2WidgetState();
}

class _Demo2WidgetState extends State<pronunciation2> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
                "poronunciation guide",
                style: GoogleFonts.lora(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.arrow_circle_right), onPressed: () => {}),
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
                                        // Navigator.pushNamed(context, 'Vguide');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(248, 212, 255, 251),
                                      ),
                                      child: Text(
                                        "Button1 4(a)(i)",
                                        style: GoogleFonts.lora(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      )))),
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
                                onPressed: () {
                                  // play the sound file and show the play button
                                  









                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(248, 212, 255, 251),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.play_circle_fill_outlined,
                                      color: Color.fromARGB(255, 150, 36, 36),
                                      size: 80.0,
                                    ), // icon
                                    Text(
                                      "Listen to Your Voice",
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
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(248, 212, 255, 251),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.speaker_sharp,
                                      color: Color.fromARGB(255, 150, 36, 36),
                                      size: 80.0,
                                    ), // icon
                                    Text(
                                      "listen to your voice",
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
