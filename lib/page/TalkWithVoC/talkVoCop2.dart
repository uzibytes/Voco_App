//4(a)(i)

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:loginuicolors/page/home.dart';

class Talkwithvoco2 extends StatefulWidget {
  const Talkwithvoco2({Key? key}) : super(key: key);

  @override
  _tackwithvoco1WidgetState createState() => _tackwithvoco1WidgetState();
  // _Demo2WidgetState createState() => _Demo2WidgetState();
}

class _tackwithvoco1WidgetState extends State<Talkwithvoco2> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context);
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
              child: Container(
        // Add text
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "welcome to VoCo",
              // Listen to the Guide carefully, the screen is divided into 4 quadrants. Click top left for Pronunciation Guide, Click top right for Talking with Voco, Click bottom left for Story Telling, Click bottom right for Games.
              style: GoogleFonts.lora(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
                fontSize: 1,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bot.png'), fit: BoxFit.cover),
        ),
      ))),
    );
  }
}
