import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'Screens/Home Screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated TextKit',
      home: HomeScreen(),
    );
  }
}


