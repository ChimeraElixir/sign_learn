import 'package:flutter/material.dart';
import 'package:sign_learn/pages/camera_screen.dart';
import 'package:sign_learn/pages/home_screen.dart';
import 'package:sign_learn/pages/practice_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      home: const HomeScreen(),
      routes: {
        PracticeScreen.id: (context) => const PracticeScreen(),
        CameraScreen.id: (context) => const CameraScreen(),
      },
    );
  }
}
