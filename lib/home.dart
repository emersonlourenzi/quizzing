import 'package:flutter/material.dart';
import 'package:quizzing/question_box.dart';
import 'package:quizzing/result.dart';

import './models/question.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  final _questions = questionsFut();
  int result = 0;
  int _index = 0;

  void nextQuestion(int value) {
    setState(() {
      _index++;
      result = result + value;
    });
  }

  void reset() {
    setState(() {
      result = 0;
      _index = 0;
    });
  }

  String getMessage() {
    if (result <= 2) {
      return 'Sabe pouco, acertou apenas $result';
    } else if (result <= 4) {
      return 'Ainda pode melhor, acertou $result';
    } else {
      return 'FODÃO . . . acertou $result';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizzing'),
      ),
      body: _index < _questions.length
          ? QuestionBox(_index, _questions, nextQuestion)
          : Result(getMessage(), reset),
    );
  }
}

List<Map<int, List<Question>>> questionsFut() {
  return [
    {
      0: [
        Question('Seleção é PENTA campeão mundial', 1),
        Question('Seleção é TETRA campeão mundial', 0),
      ]
    },
    {
      1: [
        Question('Grêmio é PENTA da libertadores', 0),
        Question('Grêmio é TRI da libertadores', 1),
      ]
    },
    {
      2: [
        Question('Grêmio é PENTA da Copa do Brasil', 1),
        Question('Grêmio é TRI da Copa do Brasil', 0),
      ]
    },
    {
      3: [
        Question('MESSI é 7x melhor do mundo', 1),
        Question('RONALDO é 7x melhor do mundo', 0),
      ]
    },
    {
      4: [
        Question('MARADONA é o REI do futebol', 0),
        Question('PELE é o REI do futebol', 1),
      ]
    },
  ];
}
