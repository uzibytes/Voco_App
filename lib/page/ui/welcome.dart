import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loginuicolors/page/home.dart';
import 'package:alan_voice/alan_voice.dart';

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
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
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
