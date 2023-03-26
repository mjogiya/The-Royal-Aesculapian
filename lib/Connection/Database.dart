import'package:cloud_firestore/cloud_firestore.dart';
import 'package:theroyalaesculapian/pages/Patient/Models/PatientsLog.dart';

class DatabaseService  {

  final String uid;
  DatabaseService({ required this.uid });
  final CollectionReference Users = FirebaseFirestore.instance.collection('Users');
  FirebaseFirestore db = FirebaseFirestore.instance;
  Future RegisterUserData(String name, String email, String mobile, String password, String role) async {
    return await Users.doc(uid).set({
      'name': name,
      'email': email,
      'mobile': mobile,
      'password': password,
      'role': role
    });
  }

    Future<String> getRoleData() async {
      String role;
      return await db.collection("Users").doc(uid).get().then((event) {
          print(event.data()?['role']);
      if(event.data()?['role'] == "Patient") {
        role = "Patient";
      } else {
        role = "";
      }
      return role;
    });
    }
// //LIst of Patients
// List<PatientsLog> _PatientsList(QuerySnapshot snapshot) {
//     return snapshot.docs.map((doc){
//       return PatientsLog(
//           name: doc.data['name'] ?? '',
//         email: doc.data['email'] ?? '',
//         mobile: doc.data['mobile'] ?? ''
//       );
//     }).toList();
// }





  // final docRef = collecti.collection("cities").doc("SF");
  // docRef.get().then(
  // (DocumentSnapshot doc) {
  // final data = doc.data() as Map<String, dynamic>;
  // // ...
  // },
  // onError: (e) => print("Error getting document: $e"),
  // );

//Setting up the stream

Stream<QuerySnapshot> get User {
    return Users.snapshots();
}

}
