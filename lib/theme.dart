import 'package:flutter/material.dart';

class BuildTheme {
  static const appBarColor1 = Color.fromRGBO(130, 216, 227, 1);
  static const appBarColor2 = Color.fromRGBO(165, 231, 205, 1);

  static const appBarGradient = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: <Color>[appBarColor1, appBarColor2]);

  static const quantityButtonColor1 = Color.fromRGBO(246, 247, 249, 1);
  static const quantityButtonColor2 = Color.fromRGBO(230, 233, 236, 1);

  static const quantityButtonGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[quantityButtonColor1, quantityButtonColor2]);

  static const accentColor = Color.fromRGBO(254, 216, 19, 1);

  static const starColor = Color.fromRGBO(255, 164, 28, 1);
  static const starColor2 = Color.fromRGBO(228, 121, 16, 1);

  static const priceColor = Color.fromRGBO(184, 59, 30, 1);

  static const borderColor = Colors.grey;

  static ThemeData themeData() {
    // const fontFamily = 'Hiragino Maru Gothic ProN';

    final _outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: borderColor), // 枠線の色
    );

    return ThemeData(
      primaryTextTheme: const TextTheme(
        headline6: TextStyle(color: Colors.black),
        bodyText2:
            TextStyle(color: Color.fromRGBO(32, 32, 165, 1), fontSize: 18),
      ),
      // primaryColor: const Color.fromRGBO(102, 203, 205, 1),
// colorScheme: ,
      primaryIconTheme: const IconThemeData(color: Colors.black, size: 100),

      accentTextTheme: const TextTheme(
        headline5: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),

      textTheme: const TextTheme(
        headline4: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
        // priceのテーマ
        headline5: TextStyle(
          fontSize: 22,
          color: priceColor,
        ),
      ),
      // primarySwatch: Colors.blue,
      accentColor: accentColor,
      // splashFactory: InkRipple.splashFactory,
      // typography: Typography.material2018(),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          primary: accentColor,
          onPrimary: Colors.black,
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          onPrimary: Colors.black,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: _outlineInputBorder,
        focusedBorder: _outlineInputBorder,
        labelStyle: const TextStyle(
          color: borderColor, // ラベルテキストの色
        ),
      ),

      dividerTheme: const DividerThemeData(
        thickness: 1,
        color: borderColor,
      ),
    );
  }
}
