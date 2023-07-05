import 'package:cloud_firestore/cloud_firestore.dart';

import 'authentication_services.dart';

class DatabaseService {
  Future<String?> addUser({
    required String email,
    required String password,
    required String date,
    required String firstname,
    required String lastname,

  }) async {
    try {
      DocumentReference<Map<String, dynamic>> users =
      FirebaseFirestore.instance.collection('users').doc(AuthService().user.uid);

      users.set({
        'id': AuthService().user.uid,
        'email': email,
        'password': password,
        'date': date,
        'firstname': firstname,
        'lastname': lastname,

      });
      return 'sucess';
    } catch (e) {
      return 'Error adding user';
    }
  }

}