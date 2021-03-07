import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class MailDialoog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Voer jouw e-mailadres in'),
      content: TextField(decoration: InputDecoration(hintText: 'naam@domein.be'),),
      actions: [
        TextButton(
          child: Text('Annuleer'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        TextButton(
          child: Text('Verstuur'),
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
    );
  }
}