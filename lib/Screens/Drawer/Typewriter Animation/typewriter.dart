import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animatedtext/Screens/Drawer/drawer.dart';
import 'package:flutter/material.dart';



class TypeWriter extends StatefulWidget {
  const TypeWriter({super.key});

  @override
  State<TypeWriter> createState() => _TypeWriterState();
}
bool _animate = false; // Flag to control the animation
bool _showText = true; //

class _TypeWriterState extends State<TypeWriter> {
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
        title: const Text("TypeWriter Animation"),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Show text only once before the button is pressed
              if (_showText && !_animate)
                const Text(
                  "Press the button for animation",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              const SizedBox(height: 30),
              // Animation section
              _animate
                  ? AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "TypeWriter Animation",
                    textStyle: const TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                isRepeatingAnimation: false, // Run animation once
                onFinished: () {
                  setState(() {
                    _animate = false; // Reset after animation ends
                    _showText = false; // Hide the placeholder text forever
                  });
                },
              )
                  : const SizedBox(), // Placeholder for animation
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _animate = true; // Trigger the animation
                    _showText = false; // Remove placeholder text
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: Colors.teal,
                ),
                child: const Text(
                  "Start Animation",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
