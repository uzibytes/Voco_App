import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loginuicolors/page/home_decide.dart';
import 'package:loginuicolors/page/login/login.dart';
import 'package:loginuicolors/page/login/register.dart';
import 'package:loginuicolors/page/home.dart';
import 'package:loginuicolors/page/form/form.dart';
import 'package:loginuicolors/page/login/LoginHome.dart';
import 'package:loginuicolors/page/pronunciation_guide/guidep2.dart';
import 'package:loginuicolors/page/vocogyan/story1.dart';
import 'package:loginuicolors/page/story_telling/storytellling.dart';
import 'package:loginuicolors/page/story_telling/storytelling2.dart';
import 'package:loginuicolors/page/ui/comingsoon.dart';
import 'package:loginuicolors/page/ui/welcome.dart';
import 'package:loginuicolors/page/TalkWithVoC/talkVoCop1.dart';
import 'package:loginuicolors/page/TalkWithVoC/talkVoCop2.dart';
import 'package:loginuicolors/page/TalkWithVoC/talkVoCop3.dart';
import 'package:loginuicolors/page/pronunciation_guide/guidep1.dart';
import 'package:loginuicolors/page/vocogyan/tech/DSA.dart';
import 'package:loginuicolors/page/vocogyan/tech/ch1.dart';
import 'package:loginuicolors/page/vocogyan/tech/quizDsa.dart';
// import 'package:flutter/services.dart';
// import 'package:alan_voice/alan_voice.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: MyLogin(),
    initialRoute: 'homeDecide',
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'home': (context) => HomePage(),
      'homeDecide': (context) => HomeDecide(),
      'form': (context) => form(),
      'welcome': (context) => welcome(),
      'start': (context) => LoginHome(),
      'Vguide1': (context) => PronucitionGuide(
            quotesList: [],
            pageNo: 0,
          ),
      'Vguide2': (context) => pronunciation2(
            quotesList: [],
            pageNo: 0,
            recordingPath: "",
          ),
      'talkVoCo1': (context) => Talkwithvoco1(),
      'talkVoCo2': (context) => Talkwithvoco2(),
      'talkVoCo3': (context) => Talkwithvoco3(),
      'StoryTelling': (context) => StoryTelling(),
      'StoryTelling2': (context) => storytelling2(),
      'ComingSoon': (context) => comingsoon(),
      'vocogyan': (context) => vocogyan(),
      'Technical': (context) => Technical(),
      'dsa': (context) => DSA(),
      'DsaQuiz': (context) => DsaQuiz(),
    },
  ));
}
