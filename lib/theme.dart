import 'package:flutter/material.dart';

ThemeData buildTheme() {
  // const fontFamily = 'Hiragino Maru Gothic ProN';
  const appBarColor1 = Color.fromRGBO(130, 216, 227, 1);
  const appBarColor2 = Color.fromRGBO(165, 231, 205, 1);

  const quantityButtonColor1 = Color.fromRGBO(246, 247, 249, 1);
  const quantityButtonColor2 = Color.fromRGBO(230, 233, 236, 1);

  const accentColor = Color.fromRGBO(254, 216, 19, 1);

  const starColor1 = Color.fromRGBO(255, 164, 28, 1);
  const starColor2 = Color.fromRGBO(228, 121, 16, 1);

  const priceColor = Color.fromRGBO(184, 59, 30, 1);

  return ThemeData(
    primaryTextTheme: const TextTheme(

      headline6: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Color.fromRGBO(32, 32, 165, 1), fontSize: 18),
    ),
    primaryColor: const Color.fromRGBO(102, 203, 205, 1),

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
    // cardTheme: CardTheme(
    //   elevation: 4,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   clipBehavior: Clip.hardEdge,
    // ),
    // splashFactory: InkRipple.splashFactory,
    // typography: Typography.material2018(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        primary: accentColor,
        onPrimary: Colors.black,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: const BorderSide(color: Colors.grey),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        // padding: const EdgeInsets.symmetric(
        //   horizontal: 16,
        //   vertical: 8,
        // ),
        onPrimary: Colors.black,
      ),
    ),
    appBarTheme: const AppBarTheme(
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),

        borderSide: const BorderSide(color: Colors.grey), // 枠線の色
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),

        borderSide: const BorderSide(color: Colors.grey), // フォーカス時
      ),
      labelStyle: const TextStyle(
        color: Colors.grey, // ラベルテキストの色
      ),
    ),
    dividerTheme: const DividerThemeData(
      thickness: 1,
      color: Colors.black26,
    ),

    // snackBarTheme: SnackBarThemeData(
    //     behavior: SnackBarBehavior.floating,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(8),
    //     ),
    //     backgroundColor: Colors.blue[900]),
    // dialogTheme: DialogTheme(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(16),
    //   ),
    // ),
  );
}
