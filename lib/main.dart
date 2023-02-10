import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/Splashscreen.dart';
import 'package:theroyalaesculapian/pages/login.dart';
import 'package:theroyalaesculapian/pages/register.dart';

void main() {
  runApp(MaterialApp(
//  initialRoute: First_Screen(),
    routes: {
      '/': (context) => Splashscreen(),
      //    '/register': (context) => register(),
    },
  ));
}
