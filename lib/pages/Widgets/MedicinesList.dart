import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MedicineList extends StatefulWidget {
  const MedicineList({Key? key}) : super(key: key);

  @override
  State<MedicineList> createState() => _MedicineListState();
}
final CollectionReference firebase = FirebaseFirestore.instance.collection('Medicines');
var Medicines = FirebaseFirestore.instance;

class _MedicineListState extends State<MedicineList> {
  @override
  Widget build(BuildContext context) {

    var firebase = Medicines
    .collection('Medicines')
    .snapshots();
    // final medicines = Provider.of<QuerySnapshot>(context);

    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: firebase,
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) =>
          ListView.builder(
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
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset(doc['ImgUrl']),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              doc['name'],
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 270,
                              child: Text(
                                doc['company'],
                                style:
                                TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 100,
                                  child: Text(
                                    doc['price'],
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Add to Cart",
                                      style: TextStyle(color: Colors.black),
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
            }
          )
      )
    );
  }
}
