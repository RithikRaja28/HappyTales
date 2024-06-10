import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
Future<String> signUpUser(
    {required String name,
    required String email,
    required String password}) async {
  String res = "Some error occured";
  try {
    AuthServices authServices = AuthServices();
    UserCredential credential = await authServices._auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    await authServices._firestore
        .collection('users')
        .doc(credential.user!.uid)
        .set({"name": name, "email": email, "uid": credential.user!.uid});

    res = "success";
  } 
  catch (e) {
    print(e.toString() + "signUpUser");
    res = e.toString();
  }
  return res;
}

}
