import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_learn/widgets/level_widget.dart';

class HomeScreen extends StatelessWidget {
  static String id = "HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => SystemNavigator.pop(),
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "SignLearn",
          style: GoogleFonts.poppins(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Level 1: Basics",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              LevelWidget(level: "1", fontSize: 24, height: 100),
              LevelWidget(level: "2", fontSize: 24, height: 100),
              LevelWidget(level: "3", fontSize: 24, height: 100),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              LevelWidget(level: "4", fontSize: 24, height: 100),
              LevelWidget(level: "5", fontSize: 24, height: 100),
              LevelWidget(level: "6", fontSize: 24, height: 100),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              LevelWidget(level: "7", fontSize: 24, height: 100),
              LevelWidget(level: "8", fontSize: 24, height: 100),
              LevelWidget(level: "9", fontSize: 24, height: 100),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              LevelWidget(level: "10", fontSize: 24, height: 100),
              LevelWidget(level: "11", fontSize: 24, height: 100),
              LevelWidget(level: "12", fontSize: 24, height: 100),
            ],
          ),
        ],
      ),
    );
  }
}
