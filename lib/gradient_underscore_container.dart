import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise_project/dice_roller.dart';

import 'mytext.dart';

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.color1, this.color2, this.color3, {super.key});

  const GradientContainer.cc({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.green,
        color3 = Colors.red;

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    Widget x = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child:const Center(
        child: DiceRoller(),
      ),
    );
    return x;
  }
}

//
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});
//
//   final List<Color> colors;
//
//   @override
//   Widget build(BuildContext context) {
//     Widget x = Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: const Center(
//         child: MyText1(
//           'fuck ',
//           str2: 'g',
//         ),
//       ),
//     );
//     return x;
//   }
// }
//
