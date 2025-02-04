import 'package:flutter/material.dart';
import "dart:math";

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 1;
  void rolldice() {
    setState(() {
      currentDice = randomizer.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$currentDice.png", width: 200),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              // padding: EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28)),
          child: Text("Roll dice"),
        )
      ],
    );
  }
}
