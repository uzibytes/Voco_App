import 'package:alan_voice/alan_voice.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginuicolors/page/TalkWithVoC/talkVoCop1.dart';
import 'package:loginuicolors/page/game/game.dart';
import 'package:loginuicolors/page/login/login.dart';
import 'package:loginuicolors/page/pronunciation_guide/guidep1.dart';
import 'package:loginuicolors/page/vocogyan/story1.dart';
// import 'package:loginuicolors/page/story_telling/storytellling.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loginuicolors/page/ui/comingsoon.dart';
// import 'package:alan_voice/alan_voice.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _Demo2WidgetState createState() => _Demo2WidgetState();
}

class _Demo2WidgetState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // get firebase instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<String> quotes = [];
  @override
  void initState() {
    setupAlan(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // here the desired height
          child: AppBar(
            //add home button with text
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

            // leading: Icon(Icons.home),
            //add text to appbar

            toolbarHeight: 500,
            title: Text(
              "Listen to the Guide carefully, the screen is divided into 4 quadrants. Click top left for Pronunciation Guide, Click top right for Talking with Voco, Click bottom left for Story Telling, Click bottom right for Games.",
              // Listen to the Guide carefully, the screen is divided into 4 quadrants. Click top left for Pronunciation Guide, Click top right for Talking with Voco, Click bottom left for Story Telling, Click bottom right for Games.
              style: GoogleFonts.lora(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    // go to login screen
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => MyLogin()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          )),
      body: SafeArea(
        child: Container(
          width: mediaQuery.size.width * 1,
          height: mediaQuery.size.height * 1,
          decoration: BoxDecoration(color: Colors.blue),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: mediaQuery.size.width * 0.48,
                          height: mediaQuery.size.height * 0.38,
                          child: SizedBox(
                            child: ElevatedButton(
                              onPressed: () async {
                                final collections =
                                    _firestore.collection('sentences');
                                await collections.get().then(
                                  (value) {
                                    value.docs.forEach(
                                      (element) {
                                        print(element.data().length);
                                        final docs = element.data();
                                        docs.forEach((key, value) {
                                          print(key);
                                          print(value);
                                          quotes.add(value);
                                        });
                                      },
                                    );
                                  },
                                );

                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) => new PronucitionGuide(
                                      quotesList: quotes,
                                      pageNo: 0,
                                    ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(248, 212, 255, 251),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              child: Center(
                                child: Text(
                                  "Pronunciation guide",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lora(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    fontSize: mediaQuery.size.width * 0.05,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: mediaQuery.size.width * 0.48,
                          height: mediaQuery.size.height * 0.38,
                          child: SizedBox(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            new Talkwithvoco1()));
                                // print('Button pressed ...');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(248, 212, 255, 251),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              child: Text(
                                "Talk with VoCo",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lora(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontSize: mediaQuery.size.width * 0.05,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: mediaQuery.size.width * 1,
                height: mediaQuery.size.height * 0.01,
              ),
              Container(
                width: mediaQuery.size.width * 1,
                height: mediaQuery.size.height * 0.39,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: mediaQuery.size.width * 0.48,
                          height: mediaQuery.size.height * 0.38,
                          child: SizedBox(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => new vocogyan()));
                                print('Button pressed ...');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(248, 212, 255, 251),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              child: Text(
                                "VoCo Gyan",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lora(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontSize: mediaQuery.size.width * 0.05,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: mediaQuery.size.width * 0.48,
                          height: mediaQuery.size.height * 0.38,
                          child: SizedBox(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => new Games()));
                                print('Button pressed ...');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(248, 212, 255, 251),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              child: Text(
                                "Games",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lora(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontSize: mediaQuery.size.width * 0.05,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

setupAlan(BuildContext context) {
  /// Init Alan Button with project key from Alan Studio
  AlanVoice.addButton(
    "a9aafa94367ae846d5a3ee4d8ef865a52e956eca572e1d8b807a3e2338fdd0dc/stage",
    buttonAlign: AlanVoice.BUTTON_ALIGN_LEFT,
  );

  AlanVoice.callbacks.add((command) => _handleCommand(command.data, context));
}

_handleCommand(Map<String, dynamic> command, BuildContext context) async {
  switch (command["commands"]) {
    case "guide":
      final FirebaseFirestore _firestore = FirebaseFirestore.instance;
      List<String> quotes = [];
      final collections = await _firestore.collection('sentences');
      await collections.get().then(
        (value) {
          value.docs.forEach(
            (element) {
              print(element.data().length);
              final docs = element.data();
              docs.forEach((key, value) {
                print(key);
                print(value);
                quotes.add(value);
              });
            },
          );
        },
      );

      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new PronucitionGuide(
            quotesList: quotes,
            pageNo: 0,
          ),
        ),
      );
      break;

    case "talkvoco":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Talkwithvoco1()));
      break;

    // case "exit":
    //   Navigator.pushAndRemoveUntil(
    //     context,
    //     MaterialPageRoute(builder: (context) => HomePage()),
    //     (Route<dynamic> route) => false,
    //   );
    //   break;
    case "Gyan":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => vocogyan()));
      break;
    // case "home":
    //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    //   List<String> quotes = [];
    //   final collections = await _firestore.collection('sentences');
    //   await collections.get().then(
    //     (value) {
    //       value.docs.forEach(
    //         (element) {
    //           print(element.data().length);
    //           final docs = element.data();
    //           docs.forEach((key, value) {
    //             print(key);
    //             print(value);
    //             quotes.add(value);
    //           });
    //         },
    //       );
    //     },
    //   );
    //   Navigator.of(context)
    //       .push(MaterialPageRoute(builder: (context) => HomePage()));
    //   break;
    case "Games":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Games()));
      break;
    case "NTechnical":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => comingsoon()));
      break;
    case "Technical":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => comingsoon()));
      break;
    case "back":
      final FirebaseFirestore _firestore = FirebaseFirestore.instance;
      List<String> quotes = [];
      final collections = await _firestore.collection('sentences');
      await collections.get().then(
        (value) {
          value.docs.forEach(
            (element) {
              print(element.data().length);
              final docs = element.data();
              docs.forEach((key, value) {
                print(key);
                print(value);
                quotes.add(value);
              });
            },
          );
        },
      );

      Navigator.of(context).pop(true);

      break;

    default:
      debugPrint("unknown command, ${command["command"]}");
      break;
  }
}
