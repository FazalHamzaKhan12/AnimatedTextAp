import 'package:flutter/material.dart';
import 'Screens/Drawer/Rotate Animation/rotateanimation.dart';
import 'Screens/Home Screen/home.dart';
import 'Screens/Drawer/Fading Animation/fadeanimation.dart';

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
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/fade_animation': (context) => const FadeTextAnimation(),
        '/rotate_animation': (context) => const RotateAnimation(),
      },
    );
  }
}
