import 'package:animatedtext/Screens/Drawer/Fading%20Animation/fadeanimation.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.indigo,
              Colors.teal,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.transparent, // Transparent to match gradient
              ),
              child: Text(
                'Text Animations',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                "Fade Animation",
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(
                Icons.opacity,
                color: Colors.white, // Icon color
              ),
              subtitle: Text(
                "Fading Text Animation",
                style: TextStyle(
                  color: Colors.teal[100], // Subtitle text (light teal)
                ),
              ),
              tileColor: Colors.indigo, // Background color of the ListTile
              hoverColor: Colors.teal[200], // Color when hovered or selected
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FadeTextAnimation()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
