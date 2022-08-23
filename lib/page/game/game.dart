import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:loginuicolors/page/ui/comingsoon.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);

  @override
  _Games createState() => _Games();
}

class _Games extends State<Games> {
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
                      onPressed: () async {},
                      child: Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ));
                },
              ),
              title: Text(
                "   VoCo Games",
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
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new comingsoon()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(248, 212, 255, 251),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  child: Text(
                                    "Animal sound",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      fontSize: mediaQuery.size.width * 0.05,
                                    ),
                                  )))),
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
                                                new comingsoon()));
                                    print('Button pressed ...');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(248, 212, 255, 251),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  child: Text(
                                    "game2",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      fontSize: mediaQuery.size.width * 0.05,
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
                                                new comingsoon()));
                                    print('Button pressed ...');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(248, 212, 255, 251),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  child: Text(
                                    "game3",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      fontSize: mediaQuery.size.width * 0.05,
                                    ),
                                  )))),
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
                                                new comingsoon()));
                                    print('Button pressed ...');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(248, 212, 255, 251),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  child: Text(
                                    "game4",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      fontSize: mediaQuery.size.width * 0.05,
                                    ),
                                  )))),
                    ]),
              ]),
            ),
          ]),
        )));
  }
}
