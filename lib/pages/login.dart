import 'package:flutter/material.dart';

import 'package:pagina_lida/components/loading.dart';
import 'package:pagina_lida/components/login_form.dart';

class Login {
  //extends StatelessWidget {

  // void teste() async {
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(
  //             email: "barry.allen@example.com",
  //             password: "SuperSecretPassword!");
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       print('No user found for that email.');
  //     } else if (e.code == 'wrong-password') {
  //       print('Wrong password provided for that user.');
  //     }
  //   }
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return FutureBuilder(
  //     future: _initialization,
  //     builder: (context, snapshot) {
  //       if (snapshot.hasError) {
  //         return Text('SomethingWentWrong');
  //       }
  //       if (snapshot.connectionState == ConnectionState.done) {
  //         FirebaseAuth.instance.authStateChanges().listen((User user) {
  //           if (user == null) {
  //             print('User is currently signed out!');
  //           } else {
  //             print('User is signed in!');
  //           }
  //         });

  //         return LoginForm();
  //       }
  //       return Loading();
  //     },
  //   );
  // }
}
