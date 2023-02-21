import 'package:flutter/material.dart';
import '../Widgets/Patients_Card.dart';

class Patient extends StatefulWidget {
  const Patient({Key? key}) : super(key: key);

  @override
  State<Patient> createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 55, 57),
          title: Text("Patient"),
        ),
        body: GridView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            childAspectRatio: .25 * 3,
          ),
          children: <Widget>[
            Patients(),
            Patients(),
            Patients(),
            Patients(),
            Patients(),
            Patients(),
            Patients(),


          ],
        ),
      ),
    );
  }
}
