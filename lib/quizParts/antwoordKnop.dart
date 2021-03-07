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

class _AntwoordKnopState extends State<AntwoordKnop> with SingleTickerProviderStateMixin {
  AnimationController animatieController;
  Animation<Color> kleurAnimatie, randAnimatie;
  Animation<double> vervaagAnimatie;

  @override
  void initState() {
    animatieController = AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    Color eindKleur = widget.correct ? Colors.green : Colors.red;
    kleurAnimatie = ColorTween(begin: Colors.blue[100], end: eindKleur).animate(animatieController);
    randAnimatie = ColorTween(begin: Colors.blue, end: eindKleur).animate(animatieController);
    vervaagAnimatie = Tween<double>(begin: 1, end: 0.3).animate(animatieController);
    kleurAnimatie.addListener(() { setState(() { }); });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double knopBreedte = MediaQuery.of(context).size.width * 0.5 - lib.tekstMarge * 2;

    return Padding(
      padding: const EdgeInsets.all(lib.tekstMarge),
      child: GestureDetector(
        child: Opacity(
          child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: knopBreedte * 0.5, minWidth: knopBreedte, maxWidth: knopBreedte),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: kleurAnimatie.value,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 1.0)
                      ],
                      border: Border.all(color: randAnimatie.value, width: 2)
                  ),
                  child: Center(
                     child: Text(widget.antwoord, textAlign: TextAlign.center, style: lib.basisTekst)
                  ),
              ),
          ),
          opacity: vervaagAnimatie.value,
        ),
        onTap: () { animatieController.forward(); },
      )
    );
  }
}


