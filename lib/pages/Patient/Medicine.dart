import 'package:flutter/material.dart';

class Medicine extends StatefulWidget {
  const Medicine({Key? key}) : super(key: key);

  @override
  State<Medicine> createState() => _MedicineState();
}

class _MedicineState extends State<Medicine> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 55, 57),
          title: Text("Medicines"),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: GridView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 229, 233, 241),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('Logos/Medicines/Covid.jpeg'),
                        height: 100,
                      ),
                      Text(
                        "Covid",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        "Essentials",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 229, 233, 241),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('Logos/Medicines/Skincare.jpeg'),
                        height: 100,
                      ),
                      Text(
                        "",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        "Skincare",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 229, 233, 241),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('Logos/Medicines/Vitamin.jpeg'),
                        height: 100,
                      ),
                      Text(
                        "Vitamins and",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        "Minerals",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 229, 233, 241),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('Logos/Medicines/HealthyFood.jpeg'),
                        height: 100,
                      ),
                      Text(
                        "Health Food",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        "and Drinks",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 229, 233, 241),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('Logos/Medicines/BabyCare.jpeg'),
                        height: 100,
                      ),
                      Text(
                        "",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        "Baby Care",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 229, 233, 241),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('Logos/Medicines/PainRelif.jpeg'),
                        height: 100,
                      ),
                      Text(
                        "",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        "Pain Relief",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 229, 233, 241),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('Logos/Medicines/Protein.jpeg'),
                        height: 100,
                      ),
                      Text(
                        "Protein and",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        "Supplements",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            ),
          ),
        ),
      ),
    );
  }
}
