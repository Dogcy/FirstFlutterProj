import 'package:flutter/material.dart';

class MyText1 extends StatelessWidget {
  final String str;
  final String str2;

  const MyText1(this.str, {super.key, required this.str2});

  @override
  Widget build(BuildContext context) {
    return Text(
      str + str2,
      style: const TextStyle(color: Colors.blue,fontSize: 28),

    );
  }
}

//final = final代表永遠不會接受新的 值
