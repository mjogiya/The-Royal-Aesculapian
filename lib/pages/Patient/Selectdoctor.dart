
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:theroyalaesculapian/Connection/Database.dart';
import 'package:theroyalaesculapian/Connection/Database.dart';
import 'package:provider/provider.dart';
import 'package:theroyalaesculapian/pages/Widgets/DoctorList.dart';

class Selectdoctor extends StatefulWidget {
  const Selectdoctor({super.key});

  @override
  State<Selectdoctor> createState() => _SelectdoctorState();
}

// var docName = [
//   "Dr.Tejas Suresh Rao",
//   "Dr.Pradeep Hosamani",
//   "Dr.Pankaj Singhai"
// ];
//
// var descList = ["General Physician", "General Physician", "General Physician"];
//
// var exp = [
//   "13 years experience overall",
//   "22 years experience overall",
//   "29 years experience overall"
// ];
//
// var imgList = [
//   "Logos/Doctor/eyeSpecialist.jpg",
//   "Logos/Doctor/eyeSpecialist.jpg",
//   "Logos/Doctor/eyeSpecialist.jpg",
// ];

class _SelectdoctorState extends State<Selectdoctor> {
  @override
  Widget build(BuildContext context) {
    var streamProvider = StreamProvider<QuerySnapshot?>.value(
      value: DatabaseService(uid: '').Doctor,
      initialData: null,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 3, 55, 57),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text(
              "Select Doctor",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: DoctorList(),
          // ListView.builder(
          //     itemCount: imgList.length,
          //     itemBuilder: (context, index) {
          //       return GestureDetector(
          //         onTap: () {},
          //         child: Card(
          //           margin: EdgeInsets.only(
          //             top: 10,
          //           ),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: <Widget>[
          //               Container(
          //                 width: 91,
          //                 height: 150,
          //                 child: Image.asset(imgList[index]),
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.all(15),
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: <Widget>[
          //                     Text(
          //                       docName[index],
          //                       style: TextStyle(
          //                           fontSize: 18,
          //                           color: Colors.black,
          //                           fontWeight: FontWeight.bold),
          //                     ),
          //                     SizedBox(
          //                       height: 5,
          //                     ),
          //                     Container(
          //                       width: 270,
          //                       child: Text(
          //                         descList[index],
          //                         style: TextStyle(
          //                             fontSize: 15, color: Colors.grey),
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       height: 5,
          //                     ),
          //                     Container(
          //                       width: 200,
          //                       child: Text(
          //                         exp[index],
          //                         style: TextStyle(
          //                           fontSize: 15,
          //                           color: Colors.grey,
          //                         ),
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       height: 20,
          //                     ),
          //                     Row(
          //                       children: <Widget>[
          //                         Icon(
          //                           Icons.thumb_up_alt_sharp,
          //                           size: 20,
          //                           color: Colors.green,
          //                         ),
          //                         Text(
          //                           '95%',
          //                           style: TextStyle(
          //                             fontWeight: FontWeight.w500,
          //                             fontSize: 15,
          //                             color: Colors.green,
          //                           ),
          //                         ),
          //                         SizedBox(
          //                           width: 10,
          //                         ),
          //                         Icon(
          //                           Icons.message_sharp,
          //                           size: 20,
          //                           color: Colors.green,
          //                         ),
          //                         Text(
          //                           '30 Patient Stories',
          //                           style: TextStyle(
          //                             fontWeight: FontWeight.w500,
          //                             fontSize: 15,
          //                             color: Colors.green,
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                     SizedBox(
          //                       height: 10,
          //                     ),
          //                     ButtonBar(
          //                       alignment: MainAxisAlignment.spaceBetween,
          //                       children: <Widget>[
          //                         MaterialButton(
          //                           minWidth: 80,
          //                           onPressed: () {},
          //                           child: Expanded(
          //                             child: Text(
          //                               'Know More',
          //                             ),
          //                           ),
          //                         ),
          //                         MaterialButton(
          //                           minWidth: 160,
          //                           color: Color.fromARGB(255, 229, 233, 241),
          //                           onPressed: () {},
          //                           child: Expanded(
          //                             child: Text(
          //                               'Book Appointment',
          //                               style: TextStyle(
          //                                   fontWeight: FontWeight.bold),
          //                             ),
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ],
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       );
          //     }),
        ),
      ),
    );
    return streamProvider;
  }
}
