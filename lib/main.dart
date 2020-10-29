import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dadu Game'),
          backgroundColor: Colors.teal[900],
        ),
        body: DaduPage(),
        backgroundColor: Colors.teal[700],
      ),
    );
  }
}

class DaduPage extends StatefulWidget {
  @override
  _DaduPageState createState() => _DaduPageState();
}

class _DaduPageState extends State<DaduPage> {
  int daduKiri = 1;
  int daduKanan = 6;

  void kocokDadu() {
    setState(() {
      daduKiri = Random().nextInt(6) + 1;
      daduKanan = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  kocokDadu();
                },
                child: Image.asset('images/dadu$daduKiri.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  kocokDadu();
                },
                child: Image.asset('images/dadu$daduKanan.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
