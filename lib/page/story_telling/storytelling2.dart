// 4(c)

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginuicolors/page/home.dart';
import 'package:loginuicolors/page/ui/comingsoon.dart';
import '../quiz/StartQuiz.dart';

// import 'package:loginuicolors/page/story_telling/storytelling2.dart';

class storytelling2 extends StatefulWidget {
  const storytelling2({Key? key}) : super(key: key);

  @override
  _StoryTelling2 createState() => _StoryTelling2();
}

class _StoryTelling2 extends State<storytelling2> {
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
                "VoCo's Story",
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
          width: mediaQuery.size.width * 1,
          height: mediaQuery.size.height * 1,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/register.png'), fit: BoxFit.cover),
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
                  height: mediaQuery.size.height * 0.48,
                  // color: Colors.black,
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                              child: Column(children: [
                            Container(
                              width: mediaQuery.size.width * 0.9,
                              height: mediaQuery.size.height * 0.39,
                              color: Color.fromARGB(255, 249, 217, 217),
                              child: Text(
                                "4(c)(i)",
                                style: GoogleFonts.lora(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  fontSize: mediaQuery.size.height * 0.02,
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
                SizedBox(
                  width: mediaQuery.size.width * 1,
                  height: mediaQuery.size.height * 0.02,
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
                              height: mediaQuery.size.height * 0.33,
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
                                        primary:
                                            Color.fromARGB(248, 156, 208, 52),
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
                              height: mediaQuery.size.height * 0.33,
                              child: SizedBox(
                                  child: ElevatedButton(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(248, 212, 255, 251),
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
