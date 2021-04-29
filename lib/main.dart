import 'package:amadon/pages/home_page.dart';
import 'package:amadon/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() => runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends HookWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // navigatorKey: useProvider(navigatorKeyProvider),
      theme: buildTheme(),

      // ThemeData(
      //   primaryColor: Colors.black,
      //   primaryIconTheme: IconThemeData(color: Colors.black),
      //   primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.black),
      //   ),
      // ),
      home: HomePage(),
    );
  }
}
