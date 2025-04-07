import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int diceNumber = Random().nextInt(6) + 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Single Dice Roller",
            style: GoogleFonts.pacifico(
                fontSize: 24, color: const Color(0xFFFE4F2D)),
          ),
        ),
        backgroundColor: const Color(0xFFFDFBEE),
      ),
      body: Center(
        child: GestureDetector(
          onTap: rollDice,
          child: Image.asset(
            "lib/assets/dice_$diceNumber.png",
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
