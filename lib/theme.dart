import 'package:flutter/material.dart';

ThemeData buildTheme() {
  const accentColor = Color.fromRGBO(254, 216, 19, 1);
  // const fontFamily = 'Hiragino Maru Gothic ProN';

  return ThemeData(
    // primaryTextTheme: TextTheme(
    //   headline6: TextStyle(color: Colors.black),
    // ),
      primaryColor: Colors.black,

    primaryIconTheme: const IconThemeData(color: Colors.black,size: 100),

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
    appBarTheme: const AppBarTheme(
        textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    ),),
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
