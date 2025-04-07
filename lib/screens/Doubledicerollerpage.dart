
import 'package:dice_roller/widgeds/DeuxDiceRollers.dart';
import 'package:flutter/material.dart';

class Doubledicerollerpage extends StatelessWidget {
  const Doubledicerollerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DeuxDiceRollers(),
      ),
    );
  }
}
