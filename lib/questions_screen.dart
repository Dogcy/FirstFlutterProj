import 'package:flutter/material.dart';

import 'answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // 寬度無窮大
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The quetsion....'),
          SizedBox(height: 30),
          AnswerButton('Awswer1', () {}),
          AnswerButton('Awswer2', () {}),
          AnswerButton('Awswer3', () {}),
        ],
      ),
    );
  }
}
