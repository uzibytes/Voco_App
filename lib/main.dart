import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loginuicolors/page/login/login.dart';
import 'package:loginuicolors/page/login/register.dart';
import 'package:loginuicolors/page/home.dart';
import 'package:loginuicolors/page/form/form.dart';
import 'package:loginuicolors/page/login/LoginHome.dart';
import 'package:loginuicolors/page/pronunciation%20guide/guidep2.dart';
import 'package:loginuicolors/page/story_telling/storytellling.dart';
import 'package:loginuicolors/page/story_telling/storytelling2.dart';
import 'package:loginuicolors/page/ui/comingsoon.dart';
import 'package:loginuicolors/page/ui/welcome.dart';

import 'package:loginuicolors/page/TalkWithVoC/talkVoCop1.dart';
import 'package:loginuicolors/page/TalkWithVoC/talkVoCop2.dart';
import 'package:loginuicolors/page/TalkWithVoC/talkVoCop3.dart';
import 'package:loginuicolors/page/pronunciation%20guide/guidep1.dart';
import 'package:flutter/services.dart';
import 'package:alan_voice/alan_voice.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: MyLogin(),
    initialRoute: 'welcome',
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'home': (context) => HomePage(),
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
          ),
      'talkVoCo1': (context) => Talkwithvoco1(),
      'talkVoCo2': (context) => Talkwithvoco2(),
      'talkVoCo3': (context) => Talkwithvoco3(),
      'StoryTelling': (context) => StoryTelling(),
      'StoryTelling2': (context) => storytelling2(),
      'ComingSoon': (context) => comingsoon(),
    },
  ));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

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
