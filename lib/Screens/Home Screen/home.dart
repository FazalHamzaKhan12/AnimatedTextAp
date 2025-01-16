import 'package:animatedtext/Screens/Drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.indigo,
                Colors.teal,
              ],
            ),
          ),
        ),
        title: const Text(
          "Animated TextKit",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      drawer: const DrawerScreen(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.deepPurple,
            ],
          ),
        ),
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                "Welcome To Text Animation",
                textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent),
              ),
            ],
            repeatForever: true,
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
