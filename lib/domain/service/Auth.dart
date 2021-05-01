import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
  Future<String> currentUser();
  Future<String> signIn(String email, String password);
  // Future<String> createUser(String email, String password);
  // Future<void> signOut();
}

class AuthFirebase implements BaseAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> signIn(String email, String password) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: email);
    return userCredential.user.uid;
  }

  // Future<String> createUser(String email, String password) async {
  //   FirebaseUser user = await _firebaseAuth.createUserWithEmailAndPassword(
  //       email: email, password: password);
  //   return user.uid;
  // }

  Future<String> currentUser() async {
    User user = _firebaseAuth.currentUser;
    return user != null ? user.uid : null;
  }

  // Future<void> signOut() async {
  //   return _firebaseAuth.signOut();
  // }
}
