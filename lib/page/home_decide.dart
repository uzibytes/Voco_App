// ignore: unused_import
import 'package:alan_voice/alan_voice.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginuicolors/page/home.dart';
import 'package:loginuicolors/page/login/login.dart';

class HomeDecide extends StatelessWidget {
  const HomeDecide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (ConnectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          print(snapshot.data);
          if (snapshot.hasData) {
            return HomePage();
          }

          return MyLogin();
        }),
      ),
    );
  }
}


