import 'package:flutter/material.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({Key? key}) : super(key: key);

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Edit Profile'),
          leading: IconButton(onPressed: () {

          },icon: Icon(Icons.arrow_back)),
          backgroundColor: Color.fromARGB(255, 3, 55, 40),
        ),
      ) ,

    );
  }
}
