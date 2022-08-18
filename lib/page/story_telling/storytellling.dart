// 4(c)
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginuicolors/page/home.dart';
import 'package:loginuicolors/page/story_telling/storytelling2.dart';

class StoryTelling extends StatefulWidget {
  const StoryTelling({Key? key}) : super(key: key);

  @override
  _StoryTelling createState() => _StoryTelling();
}

class _StoryTelling extends State<StoryTelling> {
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
                " Story Telling",
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
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
              Widget>[
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
                                    //   Navigator.pushNamed(context, 'Vguide');
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new storytelling2()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(248, 212, 255, 251),
                                  ),
                                  child: Text(
                                    "Lion 4(c)",
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
                                    // Navigator.push(
                                    //     context,
                                    //     new MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             new Talkwithvoco1()));
                                    print('Button pressed ...');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(248, 68, 211, 90),
                                  ),
                                  child: Text(
                                    "Rat",
                                    style: GoogleFonts.lora(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  )))),
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
                                    // Navigator.push(
                                    //     context,
                                    //     new MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             new Talkwithvoco1()));
                                    print('Button pressed ...');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(248, 156, 208, 52),
                                  ),
                                  child: Text(
                                    "Harry",
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
                                    print('Button pressed ...');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(248, 212, 255, 251),
                                  ),
                                  child: Text(
                                    "story",
                                    style: GoogleFonts.lora(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  )))),
                    ]),
              ]),
            ),
            Container(
                width: mediaQuery.size.width * 0.8,
                height: mediaQuery.size.height * 0.04,
                child: Text(
                  "  only one story per day",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lora(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: mediaQuery.size.height * 0.03,
                  ),
                )),
          ]),
        )));
  }
}
