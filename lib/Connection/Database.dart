import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:theroyalaesculapian/pages/Patient/Doctors.dart';
import 'package:theroyalaesculapian/pages/Patient/Models/DoctorModel.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});
  final CollectionReference Users =
      FirebaseFirestore.instance.collection('Users');
  FirebaseFirestore db = FirebaseFirestore.instance;
  final CollectionReference Doctors =
      FirebaseFirestore.instance.collection('Doctor');

  Future RegisterUserData(String name, String email, String mobile,
      String password, String role) async {
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
      if (event.data()?['role'] == "Patient") {
        role = "Patient";
      } else {
        role = "";
      }
      return role;
    });
  }

//LIst of Doctors
// Stream<QuerySnapshot> get Doctors{

// db.collection("cities").where("capital", isEqualTo: true).get().then(
//       (querySnapshot) {
//         print("Successfully completed");
//         for (var docSnapshot in querySnapshot.docs) {
//           print('${docSnapshot.id} => ${docSnapshot.data()}');
//         }
//       },
//       onError: (e) => print("Error completing: $e"),
//     );
// }

//Setting up the stream
  Stream<QuerySnapshot> get Doctor {
    return Doctors.snapshots();
  }

  Stream<QuerySnapshot> get User {
    return Users.snapshots();
  }

// List<DoctorModel>? _DoctorList(QuerySnapshot snapshot){
//   return snapshot.docs.map((doc) {
//       //print(doc.data);
//       return DoctorList(
//           name: doc.data['name'] ?? '',
//           strength: doc.data['strength'] ?? 0,
//           sugars: doc.data['sugars'] ?? '0');
//     }).toList();
//   }
// }



}
