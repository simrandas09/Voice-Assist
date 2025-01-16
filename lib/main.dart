import 'package:flutter/material.dart';
import 'package:voice_assist/home_page.dart';
import 'package:voice_assist/pallete.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siri',
      theme: ThemeData.light().copyWith(
      scaffoldBackgroundColor: Pallete.whiteColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Pallete.whiteColor,
      )
      ),
      home: const HomePage(),
    );
  }
}

