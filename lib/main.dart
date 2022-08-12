import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      )));
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicePage = 1;
  int rightDicePage = 2;
  void changeDicePage(){
    leftDicePage = Random().nextInt(6) + 1;
    rightDicePage = Random().nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDicePage();
                });
              },
              child: Image.asset('images/dice_$leftDicePage-512.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDicePage();
                });
              },
              child: Image.asset('images/dice_$rightDicePage-512.png'),
            ),
          ),
        ],
      ),
    );
  }
}
