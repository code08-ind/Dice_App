import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red.shade500,
        appBar: AppBar(
          title: Center(
            child: Text('Dice App'),
          ),
          backgroundColor: Colors.red.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonImageNumber = 1;
  int rightButtonImageNumber = 1;
  void change() {
    setState(() {
      leftButtonImageNumber = Random().nextInt(6) + 1;
      rightButtonImageNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                change();
              },
              child: Image.asset('images/dice$leftButtonImageNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                change();
              },
              child: Image.asset('images/dice$rightButtonImageNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
