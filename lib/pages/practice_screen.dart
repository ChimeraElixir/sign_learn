import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PracticeScreen extends StatefulWidget {
  static String id = "PracticeScreen";

  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Exercise $args",
          style: GoogleFonts.poppins(color: Colors.white),
        ),
      ),
      body: _body(args),
    );
  }

  _body(String args) {
    switch (args) {
      case "1":
        return _buildLevelOne();

      case "2":
        return _buildLevelTwo();

      case "3":
        return _buildLevelThree();

      case "4":
        return _buildLevelFour();

      case "5":
        return _buildLevelFive();

      case "6":
        return _buildLevelSix();

      case "7":
        return _buildLevelSeven();

      case "8":
        return _buildLevelEight();

      case "9":
        return _buildLevelNine();

      case "10":
        return _buildLevelTen();

      case "11":
        return _buildLevelELeven();

      case "12":
        return _buildLevelTwelve();

      default:
        return _buildLevelDefault();
    }
  }

  _buildLevelOne() {
    return const Center(
      child: Text("Exercise 1"),
    );
  }

  _buildLevelTwo() {
    return const Center(
      child: Text("Exercise 2"),
    );
  }

  _buildLevelDefault() {
    return const Center(
      child: Text("No Exercise detected"),
    );
  }

  _buildLevelTwelve() {
    return const Center(
      child: Text("Exercise 12"),
    );
  }

  _buildLevelELeven() {
    return const Center(
      child: Text("Exercise 11"),
    );
  }

  _buildLevelTen() {
    return const Center(
      child: Text("Exercise 10"),
    );
  }

  _buildLevelNine() {
    return const Center(
      child: Text("Exercise 9"),
    );
  }

  _buildLevelEight() {
    return const Center(
      child: Text("Exercise 8"),
    );
  }

  _buildLevelThree() {
    return const Center(
      child: Text("Exercise 3"),
    );
  }

  _buildLevelFour() {
    return const Center(
      child: Text("Exercise 4"),
    );
  }

  _buildLevelSix() {
    return const Center(
      child: Text("Exercise 6"),
    );
  }

  _buildLevelSeven() {
    return const Center(
      child: Text("Exercise 7"),
    );
  }

  _buildLevelFive() {
    return const Center(
      child: Text("Exercise 1"),
    );
  }
}
