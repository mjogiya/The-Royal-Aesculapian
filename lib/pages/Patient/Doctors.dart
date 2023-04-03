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
                tag: 'Covid'),
            makeCategory(
                catImage: 'Logos/Doctor/Skin.jpg',
                title: 'Skin & Hair',
                tag: 'skin'),
            makeCategory(
                catImage: 'Logos/Doctor/womensHealth.jpg',
                title: 'Womens Health',
                tag: 'women'),
            makeCategory(
                catImage: 'Logos/Doctor/generalPhysician.jpg',
                title: 'General physician',
                tag: 'physician'),
            makeCategory(
                catImage: 'Logos/Doctor/dentalCare.jpg',
                title: 'Dental Care',
                tag: 'dental'),
            makeCategory(
                catImage: 'Logos/Doctor/childSpecialist.jpg',
                title: 'Child Specialist',
                tag: 'child'),
            makeCategory(
                catImage: 'Logos/Doctor/homeopathy.jpg',
                title: 'Homeopathy',
                tag: 'homeopathy'),
            makeCategory(
                catImage: 'Logos/Doctor/eyeSpecialist.jpg',
                title: 'Eye Specialist',
                tag: 'eye'),
            makeCategory(
                catImage: 'Logos/Doctor/heart.jpg',
                title: 'Heart',
                tag: 'heart'),
            makeCategory(
                catImage: 'Logos/Doctor/physiotherapy.jpg',
                title: 'Physiotherapy',
                tag: 'physiotherapy'),
            makeCategory(
                catImage: 'Logos/Doctor/ayurveda.jpg',
                title: 'Ayurveda',
                tag: 'ayurveda'),
            makeCategory(
                catImage: 'Logos/Doctor/Cancer.jpg',
                title: 'Cancer',
                tag: 'Cancer'),
          ],
        ),
      ),
    );
  }

  Widget makeCategory({catImage, title, tag}) {
    return AspectRatio(
        aspectRatio: 2 / 2,
        child: Hero(
          tag: title,
          child: GestureDetector(
            onTap: () {
              scheduleMicrotask(() {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Selectdoctor(),
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
