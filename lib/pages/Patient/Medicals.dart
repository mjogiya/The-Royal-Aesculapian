import 'package:flutter/material.dart';

import '../Widgets/MedicalCard.dart';

class Medicals extends StatefulWidget {
  const Medicals({Key? key}) : super(key: key);

  @override
  State<Medicals> createState() => _MedicalsState();
}

class _MedicalsState extends State<Medicals> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 55, 57),
          title: Text("Medicals"),
        ),
        body: Column(
          children: [
          MedicalCard(
          name: 'ABC Pharmacy',
          address: '123 Main St, Anytown, USA',
          phone: '(123) 456-7890',
          imageUrl: 'https://images.unsplash.com/photo-1576091167186-537', isOpen: true),
          ],
        ),
      ),
    );
  }
}
