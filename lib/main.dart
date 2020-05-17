import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Dice App',
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int num = 1;
  int num1 = 1;
  void rnd() {
    num1 = Random().nextInt(5) + 1;
    num = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                onPressed: () {
                  setState(() {
                    rnd();
                  });
                },
                child: Image.asset('images/dice$num.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                onPressed: () {
                  setState(() {
                    rnd();
                  });
                },
                child: Image.asset('images/dice$num1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
