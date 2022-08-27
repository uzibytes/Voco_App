// 4(c)

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginuicolors/page/home.dart';
// import 'package:loginuicolors/page/ui/comingsoon.dart';
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
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
                          height: mediaQuery.size.height * 0.07,
                          // color: Colors.white,
                          //add text in center
                          child: Center(
                            child: Text(
                              "Story",
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
                            Container(
                              width: mediaQuery.size.width * 0.9,
                              height: mediaQuery.size.height * 0.41,
                              //add text

                              // color: Color.fromARGB(255, 252, 65, 65),
                              child: new SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Text(
                                  "The Potato, The Egg, And The Coffee Beans.Let’s start with this inspirational moral story that teaches a valuable life lesson!  A boy named John was upset. His father found him crying.   When his father asked John why he was crying, he said that he had a lot of problems in his life.  His father simply smiled and asked him to get a potato, an egg, and some coffee beans. He placed them in three bowls.  He then asked John to feel their texture and then fill each bowl with water.  John did as he had been told. His father then boiled all three bowls.  Once the bowls had cooled down, John’s father asked him to feel the texture of the different food items again.  John noticed that the potato had become soft and its skin was peeling off easily; the egg had become harder; the coffee beans had completely changed and filled the bowl of water with aroma and flavour.  Moral of the story Life will always have problems and pressures, like the boiling water in the story. It’s how you respond and react to these problems that counts the most!",
                                  style: GoogleFonts.oswald(
                                    // fontStyle: FontStyle.italic,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: mediaQuery.size.height * 0.02,
                                  ),
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
