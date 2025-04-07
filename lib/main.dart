import 'package:dice_roller/screens/Dicerollerpage.dart';
import 'package:dice_roller/screens/Doubledicerollerpage.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Dice Roller",
            style: GoogleFonts.pacifico(
                fontSize: 24, color: const Color(0xFFFE4F2D)),
          ),
        ),
        backgroundColor: const Color(0xFFFDFBEE),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  print("Single Dice Roller");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dicerollerpage()),
                  );
                },
                child: const Text('Single Dice Roller'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Double Dice Roller");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Doubledicerollerpage()),
                );
              },
              child: const Text('Double Dice Roller'),
            ),
          ],
        ),
      ),
    );
  }
}
