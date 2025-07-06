import 'dart:math';

import 'package:flutter/material.dart';

final randomInitializer = Random();

class DiceRoller
    extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState
    extends State<DiceRoller> {
  var activeDiceImage =
      'assets/images/dice-1.png';

  void rollDice() {
    var generateRandomNumbers = randomInitializer.nextInt(6) + 1;
    setState(() {
          activeDiceImage = 'assets/images/dice-$generateRandomNumbers.png';
    });

  }
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor:
                Colors.white,
            textStyle: TextStyle(
              fontSize: 25,
            ),
          ),
          child: Text("Press Me"),
        ),
      ],
    );
  }
}
