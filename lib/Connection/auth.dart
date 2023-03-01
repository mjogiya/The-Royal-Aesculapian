import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;


  //sign in anon

  //sign in with email
  // Future signInEmail() async {
  //   try{
  //   }catch(e) {
  //
  //   }
  // }

  //register with email
Future registerWithEmail(String email, String password) async {
    try{
     UserCredential result =  await _auth.createUserWithEmailAndPassword(email: email, password: password );
      User? user = result.user;
      return user;
    }catch(e) {
      print(e.toString());
      return null;
    }
}

  //sign out
}
