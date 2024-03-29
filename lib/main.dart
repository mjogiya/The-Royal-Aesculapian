import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/Splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
//  initialRoute: First_Screen(),
    routes: {
      '/': (context) => Splashscreen(),
      //    '/register': (context) => register(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
