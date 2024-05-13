import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mytext.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    Widget x = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2,color3],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: MyText1(
          'fugadck ',
          str2: 'gg',
        ),
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
