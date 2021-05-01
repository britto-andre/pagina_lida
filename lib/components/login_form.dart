import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Login'),
            FlatButton(
              onPressed: () {},
              child: Text('Teste'),
            )
          ],
        ),
      ),
    );
  }
}
