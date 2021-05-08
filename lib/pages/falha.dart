import 'package:flutter/material.dart';
import 'package:pagina_lida/tema.dart';

class Falha extends StatelessWidget {
  final String detalhe;

  Falha({Key key, this.detalhe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Tema.corFundoClaro,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error,
              color: Colors.red,
              size: 90.0,
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Column(
                children: [
                  Text(
                    'Uma falha ocorreu =(',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(height: 30),
                  Text(detalhe == null ? '' : '$detalhe'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
