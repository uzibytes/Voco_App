import 'package:flutter/material.dart';
import 'package:loginuicolors/page/home.dart';
import 'package:google_fonts/google_fonts.dart';

class comingsoon extends StatefulWidget {
  const comingsoon({Key? key}) : super(key: key);

  @override
  _comingsoon createState() => _comingsoon();
}

class _comingsoon extends State<comingsoon> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
        key: scaffoldKey,
        // backgroundColor: Color(0xFFF1F8F4),

        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: mediaQuery.size.width * 0.5,
                  height: mediaQuery.size.height * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/duck.gif'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/comingsoon.gif'),
                        fit: BoxFit.cover),
                  ),
                  height: mediaQuery.size.height * 0.2,
                ),
                Container(
                    width: mediaQuery.size.width * 0.48,
                    height: mediaQuery.size.height * 0.20,
                    child: SizedBox(
                        child: ElevatedButton(
                            onPressed: () {
                              //   Navigator.pushNamed(context, 'Vguide');
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                                (Route<dynamic> route) => false,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              // primary: Color.fromARGB(248, 212, 255, 251),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80)),
                            ),
                            child: Text(
                              "Go to Home",
                              style: GoogleFonts.lora(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                fontSize: 20,
                              ),
                            )))),
              ]),
        ));
  }
}
