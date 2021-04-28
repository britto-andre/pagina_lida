import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Preparando o aplicativo para você...'),
            // Lottie.asset(
            //   'assets/lottiefiles/marcador.json',
            //   width: 300,
            //   height: 200,
            //   fit: BoxFit.fill,
            // ),
          ],
        ),
      ),
    );
  }
}
