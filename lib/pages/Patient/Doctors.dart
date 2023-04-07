import 'dart:async';

import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/pages/Patient/Selectdoctor.dart';
import 'package:theroyalaesculapian/pages/Patient/Selectmedicine.dart';

class Doctors extends StatefulWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 55, 57),
          title: Text("Doctors"),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: .25 * 3,
          children: <Widget>[
            makeCategory(
                catImage: 'Logos/Doctor/Covid.jpg',
                title: 'Covid',
                tag: 'Covid',
                pageUrl: Selectdoctor(title: "Covid"),
            ),
            makeCategory(
                catImage: 'Logos/Doctor/Skin.jpg',
                title: 'Skin & Hair',
                tag: 'skin',
                pageUrl: Selectdoctor(title: "Skin & Hair"),),
            makeCategory(
                catImage: 'Logos/Doctor/womensHealth.jpg',
                title: 'Womens Health',
                tag: 'women',
                pageUrl: Selectdoctor(title: "Womens Health"),
      ),
            makeCategory(
                catImage: 'Logos/Doctor/generalPhysician.jpg',
                title: 'General Physician',
                tag: 'physician',
              pageUrl: Selectdoctor(title: "General Physician"),
            ),
            makeCategory(
                catImage: 'Logos/Doctor/dentalCare.jpg',
                title: 'Dental Care',
                tag: 'dental',
                pageUrl: Selectdoctor(title: "Dental Care"),
      ),
            makeCategory(
                catImage: 'Logos/Doctor/childSpecialist.jpg',
                title: 'Child Specialist',
                tag: 'child',
              pageUrl: Selectdoctor(title: "Child Specialist"),
            ),
            makeCategory(
                catImage: 'Logos/Doctor/homeopathy.jpg',
                title: 'Homeopathy',
                tag: 'homeopathy',
              pageUrl: Selectdoctor(title: "Homeopathy"),
            ),
            makeCategory(
                catImage: 'Logos/Doctor/eyeSpecialist.jpg',
                title: 'Eye Specialist',
                tag: 'eye',
              pageUrl: Selectdoctor(title: "Eye Specialist"),
            ),
            makeCategory(
                catImage: 'Logos/Doctor/heart.jpg',
                title: 'Heart',
                tag: 'heart',
              pageUrl: Selectdoctor(title: "Heart Specialist"),
            ),
            makeCategory(
                catImage: 'Logos/Doctor/physiotherapy.jpg',
                title: 'Physiotherapy',
                tag: 'physiotherapy',
              pageUrl: Selectdoctor(title: "Physiotherapy"),
            ),
            makeCategory(
                catImage: 'Logos/Doctor/ayurveda.jpg',
                title: 'Ayurveda',
                tag: 'ayurveda',
              pageUrl: Selectdoctor(title: "Arurveda"),
            ),
            makeCategory(
                catImage: 'Logos/Doctor/Cancer.jpg',
                title: 'Cancer',
                tag: 'Cancer',
              pageUrl: Selectdoctor(title: "Cancer"),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeCategory({catImage, title, tag, pageUrl}) {
    return AspectRatio(
        aspectRatio: 2 / 2,
        child: Hero(
          tag: title,
          child: GestureDetector(
            onTap: () {
              scheduleMicrotask(() {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => pageUrl,
                ));
              });
            },
            child: Column(
              children: <Widget>[
                Container(
                  height: 110,
                  width: 110,
                  margin: EdgeInsets.only(
                    right: 0,
                    bottom: 10,
                    top: 10,
                  ),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(catImage), fit: BoxFit.cover)),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
