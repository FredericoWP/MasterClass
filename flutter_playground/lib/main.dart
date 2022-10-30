import 'package:flutter/material.dart';
import 'package:flutter_playground/tinder/tinder_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(94, 92, 229, 1.0),
      ),
      home: const TinderScreen(),
    );
  }
}
