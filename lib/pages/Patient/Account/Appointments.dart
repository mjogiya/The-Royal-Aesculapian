import 'package:flutter/material.dart';

import '../../Widgets/Appointment_Widget.dart';

class Appointments extends StatefulWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 55, 57),
          title: const Text('Appointments'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Column(
          children: [
            Appointment_Widget(
                DocterName: 'Dr. Mayur Jogiya',
                address: 'LaxmiWadi main road, Rajkot',
                phone: '1234567890',
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFCWb0LrEd6ZUanG-vXlLW7crGHgGRooKtBCDYuZVb0w&s',
                isAvailable: true),
            Appointment_Widget(
                DocterName: 'Dr. Mansi Kakadiya',
                address: 'Raj Samdhiyana',
                phone: '1234567890',
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFCWb0LrEd6ZUanG-vXlLW7crGHgGRooKtBCDYuZVb0w&s',
                isAvailable: true),
          ],
        ),
      ),
    );
  }
}
