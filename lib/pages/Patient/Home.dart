import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/Patient/Search/Category.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                SizedBox(height: 150),
                Container(
                  width: 400,
                  height: 45,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                    label: Text('Search Here', style: TextStyle(
                        color: Colors.black
                    ),),
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
                GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10
                ),
                  children: [
                    Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              //color: Color.fromARGB(255,229,233,241)
                            ),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('Logos/Medicines/Covid.jpeg'),
                                  height: 130,
                                  width: 130,
                                ),
                                Text(
                                  "Book Appointment",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black, fontSize: 25 ),
                                ),
                              ],
                            ),
                          ),
                  ],
                )
              ],
            ),
            // child: GridView(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            //   children: [
            //
            //     Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10),
            //         color: Color.fromARGB(255,229,233,241)
            //       ),
            //       child: Column(
            //         // mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Image(
            //             image: AssetImage('Logos/Medicines/Covid.jpeg'),
            //             height: 130,
            //             width: 130,
            //           ),
            //           Text(
            //             "Book Appointment",
            //             textAlign: TextAlign.center,
            //             style: TextStyle(color: Colors.black, fontSize: 25 ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Color.fromARGB(255,229,233,241)
            //       ),
            //       child: Column(
            //         // mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Image(
            //             image: AssetImage('Logos/Medicines/Covid.jpeg'),
            //             height: 130,
            //             width: 130,
            //           ),
            //           Text(
            //             "Surgeries",
            //             textAlign: TextAlign.center,
            //             style: TextStyle(color: Colors.black, fontSize: 25 ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Color.fromARGB(255,229,233,241)
            //       ),
            //       child: Column(
            //         // mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Image(
            //             image: AssetImage('Logos/Medicines/Covid.jpeg'),
            //             height: 130,
            //             width: 130,
            //           ),
            //           Text(
            //             "Book Appointment",
            //             textAlign: TextAlign.center,
            //             style: TextStyle(color: Colors.black, fontSize: 25 ),
            //           ),
            //         ],
            //       ),
            //     )
            //   ],
            // ),
          ),
        ),
      )
    );
  }
}
