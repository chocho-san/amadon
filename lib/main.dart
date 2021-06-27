import 'package:amadon/app_title.dart';
import 'package:amadon/pages/bottom_tab/bottom_navigation.dart';
import 'package:amadon/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends HookWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: useProvider(titleProvider),
      debugShowCheckedModeBanner: false,
      theme: BuildTheme.themeData(),
      home: const BottomNavigation(),
    );
  }
}
