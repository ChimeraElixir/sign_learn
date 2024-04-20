import 'package:flutter/material.dart';
import 'package:sign_learn/pages/practice_screen.dart';

class LevelWidget extends StatelessWidget {
  final String level;
  final double fontSize, height;
  const LevelWidget(
      {super.key,
      required this.level,
      required this.fontSize,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PracticeScreen.id, arguments: level);
      },
      child: Container(
        width: 100,
        height: height,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // Darker shadow color
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(4, 4), // Right and bottom offset
            ),
          ],
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        child: Center(
          child: Text(
            level,
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
