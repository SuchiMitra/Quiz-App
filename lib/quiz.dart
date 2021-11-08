import 'package:flutter/cupertino.dart';
import 'package:quiz/answers.dart';
import 'package:quiz/questions.dart';

class Quiz extends StatelessWidget {
final List<Map< String, Object>> questions;
final int answerIndex;
final Function answerQuestion;

Quiz({
  required this.answerQuestion,
  required this. questions,
  required this.answerIndex,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[answerIndex]['questionText'] as String),
        ...(questions[answerIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
              return Answers(
              () => answerQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}