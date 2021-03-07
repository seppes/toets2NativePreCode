import 'package:flutter/material.dart';

import '../bibliotheek.dart' as lib;

import 'mailDialoog.dart';

class Uitslag extends StatelessWidget {
  final int score;

  Uitslag(this.score);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Container(
              height: 60,
              child: Center(
                child: Text("Uitslag", style: lib.kopTekst,),
              )
          ),
          Center(
            child: Text(score.toString(), style: lib.kopTekst, textScaleFactor: 7),
          ),
          Center(
            child: Text("van de ${lib.vragen.length} vragen goed", style: lib.basisTekst, textScaleFactor: 1.2),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // background
                onPrimary: Colors.white, // foreground
              ),
              child: Text('Opnieuw', style: lib.basisTekst, textScaleFactor: 1.2),
              onPressed: () => lib.startOpnieuw.add(true),
            ),
          ),
          Container(
              height: 60,
              child: Center(
                child: Text("Deel je uitslag", style: lib.kopTekst,),
              )
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white
              ),
              child: Text('Versturen', style: lib.basisTekst, textScaleFactor: 1.2),
              onPressed: () => {
                showDialog(
                  context: context,
                  builder: (context) => MailDialoog(score)
                )
              }
            ),
          )
        ]
    );
  }
}

