import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const LearnFlutterText(),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white, side: BorderSide.none),
          label: const Text('Start Quiz'),
          icon: const Icon(Icons.arrow_right),
        ),
      ],
    ));
  }
}

class LearnFlutterText extends StatelessWidget {
  const LearnFlutterText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50), // 设置所有方向的内边距
      child: Text(
        'Learn Flutter the fun way!',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}

// class LearnFlutterButton extends StatelessWidget {
//   const LearnFlutterButton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton.icon(
//       onPressed: () {
//         startQ
//         print('object');
//       },
//       style: OutlinedButton.styleFrom(
//           foregroundColor: Colors.white, side: BorderSide.none),
//       label: const Text('Start Quiz'),
//       icon: const Icon(Icons.arrow_right),
//     );
//   }
// }
