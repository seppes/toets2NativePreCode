import 'package:flutter/material.dart';

import '../bibliotheek.dart' as lib;

import 'antwoordKnop.dart';

class Vraag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: lib.tekstMarge),
                child: Text("vraag 1 van 5", style: lib.basisTekst,)
            ),
            Container(
              padding: EdgeInsets.only(right: lib.tekstMarge),
              child: Text("score: 10", style: lib.basisTekst,),
            )
          ],
        ),
        Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Image.asset('assets/images/flutter.png', fit: BoxFit.fitWidth,)
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 50),
          child: Container(
              child: Text("Wat is de vraag?", style: lib.kopTekst, textAlign: TextAlign.center,)
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AntwoordKnop(),
            AntwoordKnop()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AntwoordKnop(),
            AntwoordKnop()
          ],
        )
      ],
    );
  }
}
