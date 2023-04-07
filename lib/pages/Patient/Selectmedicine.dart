import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theroyalaesculapian/Connection/Database.dart';
import 'package:theroyalaesculapian/pages/Widgets/MedicinesList.dart';

class Selectmedicine extends StatefulWidget {
  const Selectmedicine({super.key, required this.title});

  final String title;

  @override
  State<Selectmedicine> createState() => _SelectmedicineState();
}

class _SelectmedicineState extends State<Selectmedicine> {
  @override
  Widget build(BuildContext context) {

    var streamProvider = StreamProvider<QuerySnapshot?>.value(
      value: DatabaseService(uid: '').Medicine,
      initialData: null,
      child: MaterialApp(
            debugShowCheckedModeBanner: false,

        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 3, 55, 57),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text(
              '${widget.title}',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: MedicineList(),
        ),
      ),
    );
    return streamProvider;
  }
}
