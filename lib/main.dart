import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: _DicePage(),
      ),
    ),
  );
}

class _DicePage extends StatefulWidget {
  const _DicePage({Key? key}) : super(key: key);

  @override
  State<_DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<_DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 1;
  void ChangeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: OutlinedButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                ChangeDice();
              },
            ),
          ),
          Expanded(
            child: OutlinedButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                // this function change the state of the dice
                ChangeDice();
              },
            ),
          )
        ],
      ),
    );
  }
}
