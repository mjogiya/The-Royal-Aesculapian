import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/Dashboard/Doctors.dart';
import 'package:theroyalaesculapian/pages/Dashboard/Medicals.dart';
import 'package:theroyalaesculapian/pages/Dashboard/Medicine.dart';

import 'Account.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _navIndex = 0;
  List<Widget> _screens = [
    Medicals(),
    Doctors(),
    Medicine(),
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
            backgroundColor: Colors.blue,


          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Doctors",
              backgroundColor: Colors.greenAccent
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.monitor_heart),
              label: "Medicine",
              backgroundColor: Colors.purple,

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Account",
              backgroundColor: Colors.redAccent
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
