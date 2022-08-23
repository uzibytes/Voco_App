import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:loginuicolors/page/home.dart';
import 'package:alan_voice/alan_voice.dart';
import 'package:loginuicolors/page/home_decide.dart';

void main() {
  runApp(welcome());
}

// final RouteObserver<pageRoute> routeObserver= RouteObserver<pageRoute>();
class welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    setupAlan();
    super.initState();
    appwelcom();
  }

  appwelcom() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeDecide()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              image: AssetImage('assets/welcome_voco.png'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

@override
setupAlan() {
  /// Init Alan Button with project key from Alan Studio
  AlanVoice.addButton(
    "1339c43dc0367460eef225d7d1238ada2e956eca572e1d8b807a3e2338fdd0dc/stage",
    buttonAlign: AlanVoice.BUTTON_ALIGN_LEFT,
  );

  /// Handle commands from Alan Studio
  // AlanVoice.onCommand.add((command) {
  //   debugPrint("got new command ${command.toString()}");
  // });
}
