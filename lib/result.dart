import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String message;
  final Function reset;

  const Result(this.message, this.reset, {super.key});

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
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 25),
            )
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
                onPressed: () => reset(),
                child: const Text(
                  'JOGAR NOVAMENTE',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
