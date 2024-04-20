import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_learn/pages/camera_screen.dart';

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
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                CameraScreen.id,
              );
            },
            child: Container(
              width: 100,
              height: 60,
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
              child: const Center(
                child: Text(
                  "Practice",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
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
    return const Column(
      children: [
        Text(
          "Bye",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image(image: AssetImage("assets/bye.png")),
        ),
      ],
    );
  }

  _buildLevelTwo() {
    return const Column(
      children: [
        Text(
          "Chocolate",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image(image: AssetImage("assets/chocolate.png")),
        ),
      ],
    );
  }

  _buildLevelDefault() {
    return const Center(
      child: Image(image: AssetImage("assets/excuse_me.png")),
    );
  }

  _buildLevelTwelve() {
    return const Column(
      children: [
        Text(
          "Good Morning",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image(image: AssetImage("assets/good_morning.png")),
        ),
      ],
    );
  }

  _buildLevelELeven() {
    return const Column(
      children: [
        Text(
          "Good",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image(image: AssetImage("assets/good.png")),
        ),
      ],
    );
  }

  _buildLevelTen() {
    return const Column(
      children: [
        Text(
          "Happy",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image(image: AssetImage("assets/happy.png")),
        ),
      ],
    );
  }

  _buildLevelNine() {
    return const Column(
      children: [
        Text(
          "Hello",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image(image: AssetImage("assets/hello.png")),
        ),
      ],
    );
  }

  _buildLevelEight() {
    return const Column(
      children: [
        Text(
          "I Love You",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image(image: AssetImage("assets/i_love_you.png")),
        ),
      ],
    );
  }

  _buildLevelThree() {
    return const Column(
      children: [
        Text(
          "Please",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image(image: AssetImage("assets/please.png")),
        ),
      ],
    );
  }

  _buildLevelFour() {
    return const Column(
      children: [
        Text(
          "Sad",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image(image: AssetImage("assets/sad.png")),
        ),
      ],
    );
  }

  _buildLevelSix() {
    return const Column(
      children: [
        Text(
          "Thank You",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image(image: AssetImage("assets/thank_you.png")),
        ),
      ],
    );
  }

  _buildLevelSeven() {
    return const Column(
      children: [
        Text(
          "When",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image(image: AssetImage("assets/when.png")),
        ),
      ],
    );
  }

  _buildLevelFive() {
    return const Column(
      children: [
        Text(
          "Excuse Me",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Image(image: AssetImage("assets/excuse_me.png")),
        ),
      ],
    );
  }
}
