import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/Patient/Search/Category.dart';
import 'package:theroyalaesculapian/pages/Widgets/Nearby_Doctors.dart';
import 'package:theroyalaesculapian/pages/Widgets/health_need.dart';
import 'package:theroyalaesculapian/pages/Widgets/upcoming_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
          body:

              ListView(
                padding: const EdgeInsets.all(14),
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          SizedBox(height: 30),

                          Container(
                            width: 400,
                            height: 45,
                            child: ElevatedButton.icon(
                              icon: Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 30.0,
                              ),
                              label: Text(
                                'Search Here',
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return Category();
                                  },
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[300],
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ),



                   UpcomingCard(),
                   SizedBox(height: 20),
                  Text(
                    "Health Needs",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                   SizedBox(height: 15),
                  //Health Need
                   HealthNeeds(),
                   SizedBox(height: 30),
                  Text(
                    "Featured Doctors",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                   SizedBox(height: 15),
                  //Nearby Doctors
                  NearbyDoctors(),
                ],
              ),

        ));
  }
}
