import 'package:flutter/material.dart';

import 'welkom.dart';
import 'quiz.dart';
import 'info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Flutter Quiz"),
            ),
            bottomNavigationBar: TabBar(
                indicatorColor: Colors.blueAccent,
                labelColor: Colors.blueAccent,
                tabs: [
                  Tab(icon:Icon(Icons.home), text:"welkom"),
                  Tab(icon:Icon(Icons.live_help), text:"QUIZ!"),
                  Tab(icon:Icon(Icons.info), text:"over deze app"),
                ]
            ),
            body: TabBarView(
              children: [
                Welkom(),
                Quiz(),
                Info()
              ],
            )
        )
    );
  }
}