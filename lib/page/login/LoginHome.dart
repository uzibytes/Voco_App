import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginHome extends StatelessWidget {
  const LoginHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // backgroundColor: Color.fromARGB(255, 225, 225, 225),

        body: SafeArea(
      child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.png'), fit: BoxFit.cover),
          ),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/logo-white.png",
                  scale: 3.40,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "   VoCo",
                  style: GoogleFonts.lora(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              //buttons//
              //Login button//
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'login');
                  // Get.to(() => );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.white,
                    ),
                    color: Color.fromARGB(255, 71, 191, 231),
                  ),
                  height: 60,
                  width: 300,
                  alignment: Alignment(0, 0.0),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //signup button//
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'register');
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.white,
                    ),
                    color: Color.fromARGB(255, 71, 191, 231),
                  ),
                  height: 60,
                  width: 300,
                  alignment: Alignment(0, 0.0),
                  child: Text(
                    "SIGN-UP",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //Login without signup?//

              SizedBox(
                height: 20,
              ),
            ],
          ))),
    ));
  }
}
