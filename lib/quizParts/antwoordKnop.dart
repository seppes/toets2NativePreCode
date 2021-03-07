import 'package:flutter/material.dart';

import '../bibliotheek.dart' as lib;

class AntwoordKnop extends StatefulWidget {
  String antwoord;
  bool correct;

  AntwoordKnop(this.antwoord, this.correct);

  @override
  _AntwoordKnopState createState() {
    return _AntwoordKnopState();
  }
}

class _AntwoordKnopState extends State<AntwoordKnop> {
  @override
  Widget build(BuildContext context) {
    double knopBreedte = MediaQuery.of(context).size.width * 0.5 - lib.tekstMarge * 2;

    return Padding(
      padding: const EdgeInsets.all(lib.tekstMarge),
      child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: knopBreedte * 0.5, minWidth: knopBreedte, maxWidth: knopBreedte),
          child: DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 1.0)
                  ],
                  border: Border.all(color: Colors.blue, width: 2)
              ),
              child: Center(
                 child: Text(widget.antwoord, textAlign: TextAlign.center, style: lib.basisTekst)
              ),
          ),
      )
    );
  }
}


