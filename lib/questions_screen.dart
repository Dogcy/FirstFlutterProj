import 'package:flutter/material.dart';

import 'answer_button.dart';
import 'package:practise_project/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return SizedBox(
      width: double.infinity, // 寬度無窮大
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text.toString(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),

            ...currentQuestion.getShuffledAnswers().map((item) {
              return AnswerButton(item, () {
                print('Index: $index, Item: $item');
                index++;
              });
            }),
            // AnswerButton('Awswer1', () {
            //   print('test');
            // }),
            // AnswerButton('Awswer2', () {}),
            // AnswerButton('Awswer3', () {}),
          ],
        ),
      ),
    );
  }
}
