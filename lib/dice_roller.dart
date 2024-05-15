import 'package:flutter/material.dart';

//針對StatefulWidget 會有兩個類別

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// _DiceRollerState 前面的底線代表私有變數  private
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-4.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-3.png';

    setState(() {
      activeDiceImage = 'assets/images/dice-3.png';
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
            onPressed: () {
              rollDice();
            },
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white60,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
