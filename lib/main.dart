import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pagina_lida/pages/boas_vindas.dart';
import 'package:pagina_lida/pages/splash.dart';
import 'package:pagina_lida/tema.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Tema.tema,
      home: Root(),
    );
  }
}

class Root extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('SomethingWentWrong');
        }
        if (snapshot.connectionState == ConnectionState.done) {
          // TO-DO: validar se o usuário está logado. Se sim, redirecionar para a lista de livros
          return BoasVindas();
        }
        return Splash();
      },
    );
  }
}
