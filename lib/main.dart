import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animatedtext/Screens/Drawer/Flicker%20Animation/flicker_animation.dart';
import 'package:animatedtext/Screens/Drawer/TextLiquidFill%20Animation/wavyanimated_text.dart';
import 'package:flutter/material.dart';
import 'Screens/Drawer/Colorize Animation/colorize_animation.dart';
import 'Screens/Drawer/Rotate Animation/rotateanimation.dart';
import 'Screens/Drawer/Scale Animation/scale_anmation.dart';
import 'Screens/Drawer/Typer Animation/typerss.dart';
import 'Screens/Drawer/Typewriter Animation/typewriter.dart';
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
        '/typer_animation': (context) => const TyperAnimation(),
        '/typewriter_animation': (context) => const TypeWriter(),
        '/scaletext_animation': (context) => const ScaleTextAnimation(),
        '/colorize_animation': (context) => const ColorizeAnimation(),
        '/wavyanimatedtext_animation': (context) =>  WavyAnimatedTextScreen(),
        '/flicker_animation': (context) =>  FlickerAnimation(),
      },
    );
  }
}
