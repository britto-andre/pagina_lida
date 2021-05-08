import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pagina_lida/pages/falha.dart';
import 'package:pagina_lida/domain/service/Auth.dart';
import 'package:pagina_lida/pages/boas_vindas.dart';
import 'package:pagina_lida/pages/resumo.dart';
import 'package:pagina_lida/pages/splash.dart';
import 'package:pagina_lida/tema.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

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
  final BaseAuth auth = AuthFirebase();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Falha(detalhe: snapshot.error);
        }
        if (snapshot.connectionState == ConnectionState.done) {
          if (auth.logged()) {
            return Resumo();
          }
          return BoasVindas();
        }
        return Splash();
      },
    );
  }
}
