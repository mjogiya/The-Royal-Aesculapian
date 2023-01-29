import 'package:flutter/material.dart';

import 'WelcomeScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  void initState() {
    // TODO: implement initState
    super.initState();
    const delay = const Duration(seconds: 3);
    Future.delayed(delay, () => GoToWelcome());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 3, 55, 57),
        body: Center(
          child: (
          Image(
            image: AssetImage('Logos/FIRST.jpeg'),
              height: 350,
              width:350,
          )
          ),
        ),




    );
  }
  void GoToWelcome(){
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
      builder: (BuildContext context) {
        return WelcomeScreen();
      },
    ));
  }
}
