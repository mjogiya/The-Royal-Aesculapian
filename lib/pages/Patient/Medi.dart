import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/Patient/Selectmedicine.dart';

class Medi extends StatefulWidget {
  const Medi({super.key});

  @override
  State<Medi> createState() => _MediState();
}

class _MediState extends State<Medi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,

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
                makeCategory(
                  catImage: 'Logos/Medicines/Covid.jpeg',
                  tag: "Covid \n Essentials",
                  title: "Covid \n Essentials",
                  context: context,
                  pageUrl: Selectmedicine(title : "Covid Essentials"),
                ),
                makeCategory(
                  catImage: 'Logos/Medicines/Skincare.jpeg',
                  tag: "Skin Care",
                  title: "Skin Care",
                  context: context,
                  pageUrl: Selectmedicine(title: "Skin Care"),
                ),
                makeCategory(
                  catImage: 'Logos/Medicines/Vitamin.jpeg',
                  tag: "Vitamin and \n Minarals",
                  title: "Vitamin and \n Minarals",
                  context: context,
                  pageUrl: Selectmedicine(title: "Vitamin and Minarals"),
                ),
                makeCategory(
                  catImage: 'Logos/Medicines/HealthyFood.jpeg',
                  tag: "Health Food \n and Drinks",
                  title: "Health Food and Drinks",
                  context: context,
                  pageUrl: Selectmedicine(title: "Health Food and Drinks"),
                ),
                makeCategory(
                  catImage: 'Logos/Medicines/PainRelif.jpeg',
                  tag: "Pain Relief",
                  title: "Pain Relief",
                  context: context,
                  pageUrl: Selectmedicine(title: "Pain Relief"),
                ),
                makeCategory(
                  catImage: 'Logos/Medicines/Protein.jpeg',
                  tag: "Protein and \n Supplements",
                  title: "Protein and Supplements",
                  context: context,
                  pageUrl: Selectmedicine(title: "Protein and Supplements"),
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

Widget makeCategory({catImage, title, tag, context, pageUrl}) {
  return AspectRatio(
      aspectRatio: 2 / 2,
      child: Hero(
        tag: title,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) {
                return pageUrl;
              },
            ));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 229, 233, 241),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(catImage),
                  height: 100,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ));
}
