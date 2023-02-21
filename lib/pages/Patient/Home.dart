import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/Patient/Search/Category.dart';
import 'package:theroyalaesculapian/pages/Widgets/Home_Card.dart';

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
                SizedBox(height: 50),
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

                Container(

                  child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10
                  ),
                    shrinkWrap: true,
                    children: [

                     CategoryHome(),
                      CategoryHome(),

                    ],
                  ),
                ),
              ],
            ),
        ),
      ),
    )
    );
  }
}
