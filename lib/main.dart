import 'package:flutter/material.dart';
import 'gradient_underscore_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueAccent,
      body: GradientContainer(
        Colors.black, Colors.yellow,Colors.green
      ),
    ),
  ));
}

// decoration 裝飾ｌ
// gradient 坡度ｌ
