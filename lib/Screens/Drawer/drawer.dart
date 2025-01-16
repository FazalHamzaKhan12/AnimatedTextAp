import 'package:animatedtext/Screens/Drawer/Fading%20Animation/fadeanimation.dart';
import 'package:animatedtext/Screens/Home%20Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
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
                  // Home ListTile
                  ListTile(
                    title: const Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Home button",
                      style: TextStyle(
                        color: Colors.teal[100],
                      ),
                    ),
                    onTap: () {
                      // Close the drawer and check the current route
                      Navigator.pop(context);
                      if (ModalRoute.of(context)?.settings.name != '/home') {
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                    },
                  ),
                  // Fade Animation ListTile
                  ListTile(
                    title: const Text(
                      "Fade Animation",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: const Icon(
                      Icons.opacity,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Fading Text Animation",
                      style: TextStyle(
                        color: Colors.teal[100],
                      ),
                    ),
                    onTap: () {
                      // Close the drawer and check the current route
                      Navigator.pop(context);
                      if (ModalRoute.of(context)?.settings.name != '/fade_animation') {
                        Navigator.pushReplacementNamed(context, '/fade_animation');
                      }
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "Rotate Animation",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: const Icon(
                      Icons.opacity,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Rotate Text Animation",
                      style: TextStyle(
                        color: Colors.teal[100],
                      ),
                    ),
                    onTap: () {
                      // Close the drawer and check the current route
                      Navigator.pop(context);
                      if (ModalRoute.of(context)?.settings.name != '/rotate_animation') {
                        Navigator.pushReplacementNamed(context, '/rotate_animation');
                      }
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "Typer Animation",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: const Icon(
                      Icons.opacity,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Typer Text Animation",
                      style: TextStyle(
                        color: Colors.teal[100],
                      ),
                    ),
                    onTap: () {
                      // Close the drawer and check the current route
                      Navigator.pop(context);
                      if (ModalRoute.of(context)?.settings.name != '/typer_animation') {
                        Navigator.pushReplacementNamed(context, '/typer_animation');
                      }
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "TypeWriter Animation",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: const Icon(
                      Icons.opacity,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "TypeWriter Text Animation",
                      style: TextStyle(
                        color: Colors.teal[100],
                      ),
                    ),
                    onTap: () {
                      // Close the drawer and check the current route
                      Navigator.pop(context);
                      if (ModalRoute.of(context)?.settings.name != '/typewriter_animation') {
                        Navigator.pushReplacementNamed(context, '/typewriter_animation');
                      }
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "ScaleText Animation",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: const Icon(
                      Icons.opacity,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Scale Text Animation",
                      style: TextStyle(
                        color: Colors.teal[100],
                      ),
                    ),
                    onTap: () {
                      // Close the drawer and check the current route
                      Navigator.pop(context);
                      if (ModalRoute.of(context)?.settings.name != '/scaletext_animation') {
                        Navigator.pushReplacementNamed(context, '/scaletext_animation');
                      }
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "Colorize Text Animation",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: const Icon(
                      Icons.opacity,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "ColorizeAnimation",
                      style: TextStyle(
                        color: Colors.teal[100],
                      ),
                    ),
                    onTap: () {
                      // Close the drawer and check the current route
                      Navigator.pop(context);
                      if (ModalRoute.of(context)?.settings.name != '/colorize_animation') {
                        Navigator.pushReplacementNamed(context, '/colorize_animation');
                      }
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "Wavy Animation",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: const Icon(
                      Icons.opacity,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Wavy Text Animation",
                      style: TextStyle(
                        color: Colors.teal[100],
                      ),
                    ),
                    onTap: () {
                      // Close the drawer and check the current route
                      Navigator.pop(context);
                      if (ModalRoute.of(context)?.settings.name != '/wavyanimatedtext_animation') {
                        Navigator.pushReplacementNamed(context, '/wavyanimatedtext_animation');
                      }
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "Flicker Animation",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: const Icon(
                      Icons.opacity,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Flicker Text Animation",
                      style: TextStyle(
                        color: Colors.teal[100],
                      ),
                    ),
                    onTap: () {
                      // Close the drawer and check the current route
                      Navigator.pop(context);
                      if (ModalRoute.of(context)?.settings.name != '/flicker_animation') {
                        Navigator.pushReplacementNamed(context, '/flicker_animation');
                      }
                    },
                  ),
                ],
              ),
            ),
            // Footer Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText("Presented by Fazal Hamza Khan"),
                ],
                repeatForever: true,
                isRepeatingAnimation: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
