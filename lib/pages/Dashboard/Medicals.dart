import 'package:flutter/material.dart';

class Medicals extends StatefulWidget {
  const Medicals({Key? key}) : super(key: key);

  @override
  State<Medicals> createState() => _MedicalsState();
}

class _MedicalsState extends State<Medicals> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Medicals"),
        ),
      ),
    );
  }
}
