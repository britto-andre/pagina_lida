import 'package:flutter/material.dart';

class Resumo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Dashboard... Tem que validar o usuário logado antes')
          ],
        ),
      ),
    );
  }
}
