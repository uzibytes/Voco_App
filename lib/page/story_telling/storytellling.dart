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
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage('assets/register.png'), fit: BoxFit.cover),
          // ),
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
                                        //   Navigator.pushNamed(context, 'Vguide');
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    new storytelling2()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        primary:
                                            Color.fromARGB(255, 255, 226, 5),
                                      ),
                                      child: Text(
                                        "The Potato, The Egg, And The Coffee Beans",
                                        textAlign: TextAlign.center,
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
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    new storytelling2()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromRGBO(77, 134, 249, 0.973),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                      ),
                                      child: Text(
                                        "The Lion And The Mouse",
                                        textAlign: TextAlign.center,
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
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    new storytelling2()));
                                        // print('Button pressed ...');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        primary:
                                            Color.fromARGB(248, 156, 208, 52),
                                      ),
                                      child: Text(
                                        "The MilkMaid And Her Pail",
                                        textAlign: TextAlign.center,
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
                                        // print('Button pressed ...');
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    new storytelling2()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        primary: Color.fromARGB(248, 213, 0, 0),
                                      ),
                                      child: Text(
                                        "Two Frogs With The Same Problem",
                                        textAlign: TextAlign.center,
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
                      "  Get 4 new stories Everyday",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lora(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: mediaQuery.size.height * 0.023,
                      ),
                    )),
              ]),
        )));
  }
}
