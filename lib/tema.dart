import 'package:flutter/material.dart';

// Documentation https://flutter.dev/docs/cookbook/design/themes

class Tema {
  static ThemeData get tema {
    return ThemeData(
      primaryColor: Colors.amber,
      canvasColor: Tema.corFundoAzul,
      fontFamily: 'Quicksand',
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 44.0, color: Tema.corTextoAzul),
      ),
    );
  }

  static Color get corFundoClaro {
    return Color(0xFFFAF9F9);
  }

  static Color get corFundoAzul {
    return Color(0xFFBEE3DB);
  }

  static Color get corTextoAzul {
    return Color(0xFF89B0AE);
  }
}
