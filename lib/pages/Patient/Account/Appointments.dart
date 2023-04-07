import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/Widgets/AppointmentList.dart';


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
        body:
            AppointmentList(),
      ),
    );
  }
}
