import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText = 'done';

    if (resultScore <= 65) {
      resultText = 'your are fail-${resultScore}';
    } else if (resultScore <= 95) {
      resultText = 'your are average-${resultScore}';
    } else if (resultScore <= 105) {
      resultText = 'you are good-${resultScore}';
    } else {
      resultText = 'you are excellent-${resultScore}';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}