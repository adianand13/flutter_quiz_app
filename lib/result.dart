import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    if (resultScore <= 8)
      return 'you are awsome and innocent.. !';
    else if (resultScore <= 8)
      return 'pretty Likeable!';
    else if (resultScore <= 12)
      return 'You are strange... !';
    else
      return 'You are so bad';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Reset Quiz'),
          textColor: Colors.red,
          onPressed: resetQuiz,
        )
      ],
    ));
  }
}
