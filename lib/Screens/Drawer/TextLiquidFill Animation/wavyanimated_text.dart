import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animatedtext/Screens/Drawer/drawer.dart';
import 'package:flutter/material.dart';

class WavyAnimatedTextScreen extends StatefulWidget {
  const WavyAnimatedTextScreen({super.key});

  @override
  State<WavyAnimatedTextScreen> createState() => _WavyAnimatedTextScreenState();
}

class _WavyAnimatedTextScreenState extends State<WavyAnimatedTextScreen> {
  bool _animate = false; // Flag to control the animation
  bool _showText = true; // Flag to control the placeholder text

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
        title: const Text("Wavy Animation"),
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
              // Placeholder text
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
              if (_animate)
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      "Wavy Animation",
                      textStyle: const TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  isRepeatingAnimation: false, // Run animation once
                  onFinished: () {
                    setState(() {
                      _animate = false; // Reset after animation ends
                      _showText = false; // Hide the placeholder text forever
                    });
                  },
                ),
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
