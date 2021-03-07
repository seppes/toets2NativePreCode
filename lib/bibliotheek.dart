library bibliotheek;
import 'package:flutter/material.dart';

const double tekstMarge = 10.0;
const TextStyle basisTekst = TextStyle(
    fontFamily: 'Verdana',
    fontSize: 16
);
const TextStyle kopTekst = TextStyle(
    fontFamily: 'Verdana',
    fontSize: 18,
    fontWeight: FontWeight.bold
);

List<dynamic> vragen = [
  {
    "vraag": "Waarvan is dit het logo?",
    "antwoorden": ["Android Studio", "Dart", "Flutter", "Xcode", "IntelliJ"],
    "correct": 2,
    "afbeelding": "flutter.png"
  },
  {
    "vraag": "Welke taal gebruiken we in Flutter?",
    "antwoorden": ["C", "Dart", "Java", "Python"],
    "correct": 1,
    "afbeelding": "programminglanguages.png"
  },
  {
    "vraag": "Wat is een voorbeeld van een widget?",
    "antwoorden": ["class", "Container", "const", "import"],
    "correct": 1,
    "afbeelding": "widgettree.png"
  }
];