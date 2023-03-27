import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    final doctors = Provider.of<QuerySnapshot>(context);
    for (var doc in doctors.docs) {
      print(doc.data());
    }

     // for (var doc in doctors.docs) {
      return ListView.builder(
          itemCount: doctors.size,
          itemBuilder: (context, index) {
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
                      child: Image.asset(''),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(

                            '',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          // Container(
                          //   width: 270,
                          //   child: Text(
                          //     descList[index],
                          //     style: TextStyle(
                          //         fontSize: 15, color: Colors.grey),
                          //   ),
                          // ),
                          SizedBox(
                            height: 5,
                          ),
                          // Container(
                          //   width: 200,
                          //   child: Text(
                          //     exp[index],
                          //     style: TextStyle(
                          //       fontSize: 15,
                          //       color: Colors.grey,
                          //     ),
                          //   ),
                          // ),
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
                                '95%',
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
                                '30 Patient Stories',
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
                                onPressed: () {},
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
          })
      ;
    }
  }

