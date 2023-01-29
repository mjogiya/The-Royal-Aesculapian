import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hello Dashboard"),
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
              icon: Icon(Icons.person),
              label: "Account",
              backgroundColor: Colors.redAccent
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.monitor_heart),
              label: "Medicine",
              backgroundColor: Colors.purple,

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
