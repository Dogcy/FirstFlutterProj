import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mytext.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    Widget x = Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: MyText1(
          'tsest',
          str2: '',
        ),
      ),
    );
    return x;
  }
}
