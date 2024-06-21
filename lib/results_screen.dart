import 'package:flutter/material.dart';
import 'package:practise_project/data/questions.dart';
class ResultsScreen extends StatelessWidget {
  const ResultsScreen({required this.chosenAnswers, super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index' : i,
        'question' : questions[i].text,
        'correct_answer':questions[i].answers[0], // 這邊設定第一筆都是正確答案
        'user_answer' : chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    print('in chosenAnswers');
    print(chosenAnswers);
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('data'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of answers and question...'),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {

                  print('object');
                },
                child: Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
