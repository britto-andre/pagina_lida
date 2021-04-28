import 'package:flutter/material.dart';
import 'package:pagina_lida/pages/splash.dart';
import 'package:pagina_lida/pages/boas_vindas.dart';
import 'package:pagina_lida/pages/login.dart';
import 'package:pagina_lida/tema.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Tema.tema,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/login': (context) => Login(),
        '/boas_vindas': (context) => BoasVindas(),
      },
    );
  }
}
