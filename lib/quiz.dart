import 'package:flutter/material.dart';
import 'package:practise_project/questions_screen.dart';
import 'package:practise_project/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.white38],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter),
            ),
            child: activeScreen=='start-screen'?StartScreen(switchScreen):QuestionsScreen()),
      ),
    );
  }
}
