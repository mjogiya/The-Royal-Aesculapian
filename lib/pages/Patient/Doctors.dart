import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/Widgets/Specialistdoc.dart';

class Doctors extends StatefulWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 55, 57),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {},
          ),
          title: Text("Doctors"),
        ),
        body: GridView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            childAspectRatio: .25 * 3,
          ),
          children: <Widget>[
            Specialistdoc(),
            Specialistdoc(),
            Specialistdoc(),
            Specialistdoc(),
            Specialistdoc(),
            Specialistdoc(),
            Specialistdoc(),
            Specialistdoc(),
            Specialistdoc(),
            Specialistdoc(),
          ],
        ),
      ),
    );
  }
}
