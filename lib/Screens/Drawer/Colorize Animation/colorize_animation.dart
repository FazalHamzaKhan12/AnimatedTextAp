import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animatedtext/Screens/Drawer/drawer.dart';
import 'package:flutter/material.dart';

class ColorizeAnimation extends StatefulWidget {
  const ColorizeAnimation({super.key});

  @override
  State<ColorizeAnimation> createState() => _ColorizeAnimationState();
}

class _ColorizeAnimationState extends State<ColorizeAnimation> {
  bool _animate = false; // Flag to control the animation
  bool _showText = true; // Flag to control the placeholder text

  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );

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
        title: const Text("Colorize Animation"),
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
              if (_animate)
                AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Hamza',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'Bill Gates',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'Steve Jobs',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onFinished: () {
                    setState(() {
                      _animate = false; // Reset after animation ends
                      _showText = false; // Hide the placeholder text forever
                    });
                  },
                  onTap: () {
                    print("Animation Tapped!");
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
