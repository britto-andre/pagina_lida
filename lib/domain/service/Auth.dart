import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
  String currentUserId();
  bool logged();
  Future<String> signIn(String email, String password);
  // Future<String> createUser(String email, String password);
  Future<void> signOut();
}

class AuthFirebase implements BaseAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> signIn(String email, String password) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user.uid;
  }

  // Future<String> createUser(String email, String password) async {
  //   FirebaseUser user = await _firebaseAuth.createUserWithEmailAndPassword(
  //       email: email, password: password);
  //   return user.uid;
  // }

  String currentUserId() {
    User user = _firebaseAuth.currentUser;
    print('user: $user');
    return user != null ? user.uid : null;
  }

  bool logged() {
    User user = _firebaseAuth.currentUser;
    return user != null;
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }
}
