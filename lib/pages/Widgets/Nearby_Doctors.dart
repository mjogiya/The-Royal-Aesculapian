import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class NearbyDoctors extends StatefulWidget {
  const NearbyDoctors({super.key});

  @override
  State<NearbyDoctors> createState() => _NearbyDoctorsState();
}

final CollectionReference firebase = FirebaseFirestore.instance.collection("Doctor");
var Doctors = FirebaseFirestore.instance;
FirebaseFirestore db = FirebaseFirestore.instance;
final currentPat = FirebaseAuth.instance.currentUser;

class _NearbyDoctorsState extends State<NearbyDoctors> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('Logos/Doc.jpg'), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: const Text(
                    "Dr.Mayur Jogiya",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: const Text("General Practitioner"),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.yellow[700],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                        right: 6,
                      ),
                      child: const Text(
                        "4.0",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text("195 Reviews")
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
