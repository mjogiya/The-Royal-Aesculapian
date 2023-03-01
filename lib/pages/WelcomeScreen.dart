import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/Login_Doc.dart';
import 'package:theroyalaesculapian/pages/login.dart';
import 'package:theroyalaesculapian/pages/register.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 3, 55, 57),
        appBar: AppBar(
          title: Text("Welcome to the Royal Aesculapian"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 3, 55, 57),
        ),
        body: Column(
          children: [
            Image(
              image: AssetImage('Logos/FIRST.jpeg'),
              height: 250,
              width: 450,
            ),
            Container(
              width: 300,
              margin: const EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) {
                      return login();
                    },
                  ));
                },
                style: TextButton.styleFrom(
                    shape: const StadiumBorder(),
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromRGBO(34, 93, 42, 100),
                    padding: const EdgeInsets.all(20),
                    textStyle: const TextStyle(fontSize: 30)),
                child: const Text("Login as Patient"),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: 300,
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) {
                      return register();
                    },
                  ));
                },
                style: TextButton.styleFrom(
                    shape: const StadiumBorder(),
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromRGBO(34, 93, 42, 100),
                    padding: const EdgeInsets.all(20),
                    textStyle: const TextStyle(fontSize: 30)),
                child: const Text("Register as Patient"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 300,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Container(
              width: 300,
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 20),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) {
                      return Login_Doctor();
                    },
                  ));
                },
                style: TextButton.styleFrom(
                    shape: const StadiumBorder(),
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromRGBO(34, 93, 42, 100),
                    padding: const EdgeInsets.all(20),
                    textStyle: const TextStyle(fontSize: 30)),
                child: const Text("Login as Doctor"),
              ),
            ),
          ],
        ));
  }
}
