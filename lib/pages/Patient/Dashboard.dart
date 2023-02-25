import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/Patient/Doctors.dart';
import 'package:theroyalaesculapian/pages/Patient/Home.dart';
import 'package:theroyalaesculapian/pages/Patient/Medicals.dart';
//import 'package:theroyalaesculapian/pages/Patient/Medicine.dart';
import 'package:theroyalaesculapian/pages/Patient/Medi.dart';

import 'Account.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _navIndex = 2;
  List<Widget> _screens = [
    Medicals(),
    Doctors(),
    Home(),
    Medi(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_navIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_information),
            label: "Medicals",
            backgroundColor: Color.fromARGB(255, 3, 55, 57),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Doctors",
            backgroundColor: Color.fromARGB(255, 3, 55, 57),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "HOME",
            backgroundColor: Color.fromARGB(255, 3, 55, 57),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart),
            label: "Medicine",
            backgroundColor: Color.fromARGB(255, 3, 55, 57),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
            backgroundColor: Color.fromARGB(255, 3, 55, 57),
          ),
        ],
        onTap: (index) {
          setState(() {
            _navIndex = index;
          });
        },
      ),
    );
  }
}
