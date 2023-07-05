
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth auth = FirebaseAuth.instance;
  get user => auth.currentUser;


  Future signUp({required String email, required String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'sucess';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }


  Future signIn({required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password,);
      return 'sucess';
    } on FirebaseAuthException catch (e) {
      return 'Invalid Password or Email try again later';
    }
  }

}
