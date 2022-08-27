// 4(c)
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginuicolors/page/home.dart';
// import 'package:loginuicolors/page/story_telling/storytelling2.dart';
import 'package:loginuicolors/page/ui/comingsoon.dart';
import 'package:loginuicolors/page/vocogyan/tech/quizDsa.dart';

class DSA extends StatefulWidget {
  const DSA({Key? key}) : super(key: key);

  @override
  _DSA createState() => _DSA();
}

class _DSA extends State<DSA> {
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
                "Technical Words ",
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
        body: SingleChildScrollView(
            // controller: controller,
            child: Column(

                // padding: EdgeInsets.all(10),
                children: [
              // children: <Widget>[
              Container(
                  width: mediaQuery.size.width * 0.95,
                  height: mediaQuery.size.height * 0.2,
                  //add button
                  child: SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, 'Vguide');
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new DsaQuiz()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(248, 212, 255, 251),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          child: Text(
                            "Ep. 1 - Linked List",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: mediaQuery.size.width * 0.05,
                            ),
                          )))),

              //add text

              Container(
                width: mediaQuery.size.width * 1,
                height: mediaQuery.size.height * 0.04,
                // color: Color.fromARGB(255, 22, 204, 43),
                // color: Colors.black,
              ),
              Container(
                  width: mediaQuery.size.width * 0.95,
                  height: mediaQuery.size.height * 0.2,
                  //add button
                  child: SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, 'Vguide');
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new comingsoon()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(248, 212, 255, 251),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          child: Text(
                            "Ep. 2 - C ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: mediaQuery.size.width * 0.05,
                            ),
                          )))),

              //add text

              Container(
                width: mediaQuery.size.width * 1,
                height: mediaQuery.size.height * 0.04,
                // color: Color.fromARGB(255, 22, 204, 43),
                // color: Colors.black,
              ),
              Container(
                  width: mediaQuery.size.width * 0.95,
                  height: mediaQuery.size.height * 0.2,
                  //add button
                  child: SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, 'Vguide');
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new comingsoon()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(248, 212, 255, 251),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          child: Text(
                            "Ep. 3 - C++",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: mediaQuery.size.width * 0.05,
                            ),
                          )))),

              //add text

              Container(
                width: mediaQuery.size.width * 1,
                height: mediaQuery.size.height * 0.04,
                // color: Color.fromARGB(255, 22, 204, 43),
                // color: Colors.black,
              ),
              Container(
                  width: mediaQuery.size.width * 0.95,
                  height: mediaQuery.size.height * 0.2,
                  //add button
                  child: SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, 'Vguide');
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new comingsoon()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(248, 212, 255, 251),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          child: Text(
                            "Ep. 4 - C#",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: mediaQuery.size.width * 0.05,
                            ),
                          )))),

              //add text

              Container(
                width: mediaQuery.size.width * 1,
                height: mediaQuery.size.height * 0.04,
                // color: Color.fromARGB(255, 22, 204, 43),
                // color: Colors.black,
              ),
              Container(
                  width: mediaQuery.size.width * 0.95,
                  height: mediaQuery.size.height * 0.2,
                  //add button
                  child: SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, 'Vguide');
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new comingsoon()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(248, 212, 255, 251),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          child: Text(
                            "Ep. 5 - Java",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: mediaQuery.size.width * 0.05,
                            ),
                          )))),

              //add text

              Container(
                width: mediaQuery.size.width * 1,
                height: mediaQuery.size.height * 0.04,
                // color: Color.fromARGB(255, 22, 204, 43),
                // color: Colors.black,
              ),
              Container(
                  width: mediaQuery.size.width * 0.95,
                  height: mediaQuery.size.height * 0.2,
                  //add button
                  child: SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, 'Vguide');
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new comingsoon()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(248, 212, 255, 251),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          child: Text(
                            "Ep. 6 - Python",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: mediaQuery.size.width * 0.05,
                            ),
                          )))),

              //add text

              Container(
                width: mediaQuery.size.width * 1,
                height: mediaQuery.size.height * 0.04,
                // color: Color.fromARGB(255, 22, 204, 43),
                // color: Colors.black,
              ),
              Container(
                  width: mediaQuery.size.width * 0.95,
                  height: mediaQuery.size.height * 0.2,
                  //add button
                  child: SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, 'Vguide');
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new comingsoon()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(248, 212, 255, 251),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          child: Text(
                            "Ep. 7 - Ruby",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: mediaQuery.size.width * 0.05,
                            ),
                          )))),

              //add text

              Container(
                width: mediaQuery.size.width * 1,
                height: mediaQuery.size.height * 0.04,
                // color: Color.fromARGB(255, 22, 204, 43),
                // color: Colors.black,
              ),
              Container(
                  width: mediaQuery.size.width * 0.95,
                  height: mediaQuery.size.height * 0.2,
                  //add button
                  child: SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, 'Vguide');
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new comingsoon()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(248, 212, 255, 251),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          child: Text(
                            "Ep. 8 - Fluent",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: mediaQuery.size.width * 0.05,
                            ),
                          )))),

              //add text

              Container(
                width: mediaQuery.size.width * 1,
                height: mediaQuery.size.height * 0.04,
                // color: Color.fromARGB(255, 22, 204, 43),
                // color: Colors.black,
              ),
              Container(
                  width: mediaQuery.size.width * 0.95,
                  height: mediaQuery.size.height * 0.2,
                  //add button
                  child: SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, 'Vguide');
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new comingsoon()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(248, 212, 255, 251),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          child: Text(
                            "Ep. 9 - Go",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: mediaQuery.size.width * 0.05,
                            ),
                          )))),

              //add text

              Container(
                width: mediaQuery.size.width * 1,
                height: mediaQuery.size.height * 0.04,
                // color: Color.fromARGB(255, 22, 204, 43),
                // color: Colors.black,
              ),
              Container(
                  width: mediaQuery.size.width * 0.95,
                  height: mediaQuery.size.height * 0.2,
                  //add button
                  child: SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, 'Vguide');
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new comingsoon()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(248, 212, 255, 251),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          child: Text(
                            "Ep. 10 - Dart",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lora(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              fontSize: mediaQuery.size.width * 0.05,
                            ),
                          )))),

              //add text

              Container(
                width: mediaQuery.size.width * 1,
                height: mediaQuery.size.height * 0.04,
                // color: Color.fromARGB(255, 22, 204, 43),
                // color: Colors.black,
              ),
            ])));
  }
}
