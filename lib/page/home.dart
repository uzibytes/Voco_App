import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginuicolors/page/TalkWithVoC/talkVoCop1.dart';
import 'package:loginuicolors/page/game/game.dart';
import 'package:loginuicolors/page/login/login.dart';
import 'package:loginuicolors/page/pronunciation_guide/guidep1.dart';
import 'package:loginuicolors/page/story_telling/storytellling.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // here the desired height
          child: AppBar(
             
            toolbarHeight: 500,
           
            title: Text(
              "VoCo Listen to the Guide carefully, the screen is divided into 4 quadrants. Click top left for Pronunciation Guide, Click top right for Talking with Voco, Click bottom left for Story Telling, Click bottom right for Games.",
              // Listen to the Guide carefully, the screen is divided into 4 quadrants. Click top left for Pronunciation Guide, Click top right for Talking with Voco, Click bottom left for Story Telling, Click bottom right for Games.
              style: GoogleFonts.lora(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.blue),
                  
            ),
            
            actions: <Widget>[
              
              IconButton(
               
                 icon: 

                 Text(
              "Logout",
              style: GoogleFonts.lora(
                  fontStyle: FontStyle.italic, fontSize: 10, fontWeight: FontWeight.bold,),
                
                ),
                  // icon: Icon(Icons.logout
                  // ),
                  tooltip: "Logout",
                  
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    // go to login screen
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => MyLogin()),
                      (Route<dynamic> route) => false,
                    );
                  }),
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
                                await collections.get().then((value) {
                                  value.docs.forEach((element) {
                                    print(element.data().length);
                                    final docs = element.data();
                                    docs.forEach((key, value) {
                                      print(key);
                                      print(value);
                                      quotes.add(value);
                                    });
                                  });
                                });

                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            new PronucitionGuide(
                                              quotesList: quotes,
                                              pageNo: 0,
                                            )));
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
                                print('Button pressed ...');
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
                height: mediaQuery.size.height * 0.03,
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
                                        builder: (context) =>
                                            new StoryTelling()));
                                print('Button pressed ...');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(248, 212, 255, 251),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              child: Text(
                                "Story Telling",
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
