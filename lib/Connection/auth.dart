import 'package:firebase_auth/firebase_auth.dart';
import 'package:theroyalaesculapian/Connection/Database.dart';


class AuthService  {
   FirebaseAuth _auth = FirebaseAuth.instance;
   // ignore: non_constant_identifier_names

  Future SigninWithEmail(String email, String password) async {
    try{
      UserCredential? result =  await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      // final String role1 = await DatabaseService(uid: user!.uid).getRoleData();
      if(await DatabaseService(uid: user!.uid).getRoleData() == "Patient") {
        return user;

      } else {

        await _auth.signOut();
        return null;
      }


    }catch(e) {
      print(e.toString());
      return null;
    }
  }



  //register with email
Future registerWithEmail(String name, String email, String mobile, String password) async {
    try{
     UserCredential result =  await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      // adding data to firestore
     await DatabaseService(uid: user!.uid).RegisterUserData(name, email, mobile, password, 'Patient');
      return user;
    }catch(e) {
      // print(e.toString());
      return null;
    }
}

  //sign out
  Future signOutEmail() async {
    try{
      return await _auth.signOut();
    } catch(e) {
      // print(e.toString());
      return null;
    }
  }

}
