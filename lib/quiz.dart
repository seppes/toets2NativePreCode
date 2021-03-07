import 'package:flutter/material.dart';
import 'package:flutter_quiz_new/quizParts/uitslag.dart';
import 'package:flutter_quiz_new/quizParts/vraag.dart';

import 'bibliotheek.dart' as lib;

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  int vraagTeller = 0;
  int score = 0;
  int aantalVragen = 1;

  @override
  Widget build(BuildContext context) {
    if (vraagTeller==aantalVragen) {
      return Uitslag();
    } else {
      return Vraag();
    }
  }
}