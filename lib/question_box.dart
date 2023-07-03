import 'package:flutter/material.dart';

class QuestionBox extends StatelessWidget {
  final int _index;
  final _questions;
  final Function nextQuestion;
  final String _heading = 'SELECIONE A AFIRMAÇÃO CORRETA:';

  const QuestionBox(this._index, this._questions, this.nextQuestion,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Row(
          children: <Widget>[
            Expanded(
                child: Text(
              '',
              style: TextStyle(fontSize: 50),
            ))
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                _heading,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        const Row(
          children: <Widget>[
            Expanded(
                child: Text(
              '',
              style: TextStyle(fontSize: 50),
            ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: ElevatedButton(
                onPressed: () =>
                    nextQuestion(_questions[_index][_index][0].value),
                child: Text(
                  _questions[_index][_index][0].question,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
        const Row(
          children: <Widget>[
            Expanded(
              child: Text(
                '',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: ElevatedButton(
                onPressed: () =>
                    nextQuestion(_questions[_index][_index][1].value),
                child: Text(
                  _questions[_index][_index][1].question,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
