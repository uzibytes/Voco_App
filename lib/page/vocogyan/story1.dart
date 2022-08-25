//page(4(b));

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
// import 'package:loginuicolors/page/TalkWithVoC/talkVoCop2.dart';
// import 'package:loginuicolors/page/TalkWithVoC/talkVoCop3.dart';
import 'package:loginuicolors/page/home.dart';
import 'package:loginuicolors/page/ui/comingsoon.dart';
import 'package:loginuicolors/page/vocogyan/tech/ch1.dart';

class vocogyan extends StatefulWidget {
  const vocogyan({Key? key}) : super(key: key);

  @override
  _vocogyan createState() => _vocogyan();
  // _Demo2WidgetState createState() => _Demo2WidgetState();
}

class _vocogyan extends State<vocogyan> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                " Talk with VoCo",
                style: GoogleFonts.lora(
                    fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
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
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
              Widget>[
            Container(
              color: Color.fromARGB(117, 240, 234, 234),
              width: mediaQuery.size.width * 1,
              height: mediaQuery.size.height * 0.04,
            ),
            Container(
              height: mediaQuery.size.height * 0.39,
              // color: Colors.black,
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: mediaQuery.size.width * 0.9,
                        height: mediaQuery.size.height * 0.37,
                        child: Container(
                            width: mediaQuery.size.width * 0.48,
                            height: mediaQuery.size.height * 0.39,
                            child: SizedBox(
                                child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => new Technical()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: mediaQuery.size.height * 0.12,
                                    width: mediaQuery.size.width * 0.6,
                                    // color: Colors.black26,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/roboticsvoco.png'),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Technical Courses ",
                                    style: GoogleFonts.lora(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      fontSize: mediaQuery.size.height * 0.03,
                                    ),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  //     shape: CircleBorder(),
                                  primary: Color.fromARGB(255, 238, 205, 40)),
                            ))),
                      )
                    ]),
              ]),
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.02,
            ),
            Container(
              height: mediaQuery.size.height * 0.39,
              // color: Colors.black,
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          width: mediaQuery.size.width * 0.9,
                          height: mediaQuery.size.height * 0.37,
                          color: Color.fromARGB(255, 249, 217, 217),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => new Technical()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.emoji_people_rounded,
                                  color: Color.fromARGB(255, 150, 36, 36),
                                  size: 80.0,
                                ), // icon
                                Text(
                                  "Non-Technical Courses",
                                  style: GoogleFonts.lora(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    fontSize: mediaQuery.size.height * 0.03,
                                  ),
                                )
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                //     shape: CircleBorder(),
                                primary: Color.fromARGB(255, 217, 132, 111)),
                          )),
                    ]),
              ]),
            ),
          ]),
        )));
  }
}
