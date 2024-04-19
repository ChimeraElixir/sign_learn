import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_learn/widgets/level_widget.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _body(args),
          const SizedBox(height: 15),
          const LevelWidget(level: "Practice", fontSize: 16.5, height: 60),
        ],
      ),
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
      child: Image(image: AssetImage("assets/bye.png")),
    );
  }

  _buildLevelTwo() {
    return const Center(
      child: Image(image: AssetImage("assets/chocolate.png")),
    );
  }

  _buildLevelDefault() {
    return const Center(
      child: Image(image: AssetImage("assets/excuse_me.png")),
    );
  }

  _buildLevelTwelve() {
    return const Center(
      child: Image(image: AssetImage("assets/good_morning.png")),
    );
  }

  _buildLevelELeven() {
    return const Center(
      child: Image(image: AssetImage("assets/good.png")),
    );
  }

  _buildLevelTen() {
    return const Center(
      child: Image(image: AssetImage("assets/happy.png")),
    );
  }

  _buildLevelNine() {
    return const Center(
      child: Image(image: AssetImage("assets/hello.png")),
    );
  }

  _buildLevelEight() {
    return const Center(
      child: Image(image: AssetImage("assets/i_love_you.png")),
    );
  }

  _buildLevelThree() {
    return const Center(
      child: Image(image: AssetImage("assets/please.png")),
    );
  }

  _buildLevelFour() {
    return const Center(
      child: Image(image: AssetImage("assets/sad.png")),
    );
  }

  _buildLevelSix() {
    return const Center(
      child: Image(image: AssetImage("assets/thank_you.png")),
    );
  }

  _buildLevelSeven() {
    return const Center(
      child: Image(image: AssetImage("assets/when.png")),
    );
  }

  _buildLevelFive() {
    return const Center(
      child: Image(image: AssetImage("assets/excuse_me.png")),
    );
  }
}
