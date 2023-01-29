import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/login.dart';

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
            Image(image: AssetImage('Logos/FIRST.jpeg'),
            height: 200,
            width: 450,
            ),

            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color.fromRGBO(34, 93, 42, 100),
                padding: const EdgeInsets.all(20),
                textStyle: const TextStyle(fontSize: 30)
              ),
                child: const Text("Login as Patient"),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromRGBO(34, 93, 42, 100),
                  padding: const EdgeInsets.all(20),
                  textStyle: const TextStyle(fontSize: 30)
              ),
              child: const Text("Register as Patient"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext context) {
                    return login();
                  },
                ));
              },
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromRGBO(34, 93, 42, 100),
                  padding: const EdgeInsets.all(20),
                  textStyle: const TextStyle(fontSize: 30)
              ),
              child: const Text("Login as Doctor"),
            ),
          ],
        )
    );
  }
}
