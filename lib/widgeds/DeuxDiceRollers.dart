import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeuxDiceRollers extends StatefulWidget {
  @override
  State<DeuxDiceRollers> createState() => _DeuxDiceRollersState();
}

class _DeuxDiceRollersState extends State<DeuxDiceRollers> {
  int dice1 = Random().nextInt(6) + 1;
  int dice2 = Random().nextInt(6) + 1;

  void rollDice() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Lancer de Deux Dés",
            style: GoogleFonts.pacifico(
                fontSize: 24, color: const Color(0xFFFE4F2D)),
          ),
        ),
        backgroundColor: const Color(0xFFFDFBEE),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: rollDice,
                  child: Image.asset(
                    "lib/assets/dice_$dice1.png",
                    width: 150,
                    height: 150,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: rollDice,
                  child: Image.asset(
                    "lib/assets/dice_$dice2.png",
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Résultats : $dice1 + $dice2",
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Somme : ${dice1 + dice2}",
              style: GoogleFonts.lato(
                  fontSize: 24, color: const Color.fromARGB(255, 255, 0, 0)),
            ),
          ],
        ),
      ),
    );
  }
}
