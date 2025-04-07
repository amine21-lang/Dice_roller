import 'package:dice_roller/widgeds/DiceRoller.dart';
import 'package:flutter/material.dart';

class Dicerollerpage extends StatelessWidget {
  const Dicerollerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DiceRoller(),
      ),
    );
  }
}
