import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:theroyalaesculapian/pages/Widgets/Loading.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({Key? key, required this.type}) : super(key: key);
  
  final String type;
  @override
  State<DoctorList> createState() => _DoctorListState();

}
final CollectionReference firebase = FirebaseFirestore.instance.collection("Doctor");
var Doctors = FirebaseFirestore.instance;
FirebaseFirestore db = FirebaseFirestore.instance;
final currentPat = FirebaseAuth.instance.currentUser;


class _DoctorListState extends State<DoctorList> {
  
  @override
  Widget build(BuildContext context) {
    var firebase = Doctors
        .collection('Doctor')
        .where('type', isEqualTo: '${widget.type}')
        .snapshots();


      return Scaffold(
        body: StreamBuilder<QuerySnapshot> (
          stream: firebase,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) => snapshot.hasData ? ListView.builder(
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (BuildContext context, index) {
            final DocumentSnapshot doc = snapshot.data!.docs[index];

            return GestureDetector(
              onTap: () {},
              child: Card(
                margin: EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 91,
                      height: 150,
                      child: Image.network('${doc['docImage']}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            doc['name'],
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 270,
                            child: Text(
                              ('Speciality: ' + doc['Services']),
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 270,
                            child: Text(
                              (doc['experience'] + ' years experience overall'),
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              ('Fees: '+doc['fees']),
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.thumb_up_alt_sharp,
                                size: 20,
                                color: Colors.green,
                              ),
                              Text(
                                doc['ratings'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.message_sharp,
                                size: 20,
                                color: Colors.green,
                              ),
                              Text(
                                (doc['patients stories']+' Patient Stories'),
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              MaterialButton(
                                minWidth: 80,
                                onPressed: () {},
                                child: Expanded(
                                  child: Text(
                                    'Know More',
                                  ),
                                ),
                              ),
                              MaterialButton(
                                minWidth: 160,
                                color: Color.fromARGB(255, 229, 233, 241),
                                onPressed:  () async {
                                  final AppointData = {
                                    "DoctorId" : doc.id,
                                    "DocName" : doc['name'],
                                    "DocEmail" : doc['email'],
                                    "DocMobile" : doc['mobile'],
                                    "DocAddress": doc['address'],
                                    "DocImage": doc['docImage'],
                                    "Available": doc['available'],
                                    "Bookingtime": Timestamp.now(),
                                    "Patient" : currentPat!.uid,
                                  };
                                 await db.collection("Appointment").doc().set(AppointData).onError((error, stackTrace) => print(error));
                                },
                                child: Expanded(
                                  child: Text(
                                    'Book Appointment',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }) : Loading(),
      )
        );
    }
  }

