import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    //container takes the full width of the screen and then text is center aligned
    //be default text is left aligned and size is small, so add container

    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          _questionText,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ));
  }
}
