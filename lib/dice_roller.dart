import 'package:flutter/material.dart';
import 'dart:math';
//針對StatefulWidget 會有兩個類別


// random類別 不需要重新創建 增加效能
final randomizer = Random();


// Stateful有兩個固定的class
// 一個是屬於私有的 一個控制狀態
// 如這邊就偏向是狀態狀態
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});


  // 主要返回一個狀態
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// _DiceRollerState 前面的底線代表私有變數  private
// 這邊主要是建構    class DiceRoller 控制狀態
class _DiceRollerState extends State<DiceRoller> {
  //預設
  var currentDiceRoll = 1;

  void rollDice() {
    // 更新畫面使用
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
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
