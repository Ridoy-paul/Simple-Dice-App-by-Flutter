import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("FARA IT Fusion"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {})
          ],
        ),
        body: DicePage(),
      ),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 3;
  void diceNumChange(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  diceNumChange();
                  // setState(() {
                  //   leftDiceNumber = Random().nextInt(6) + 1;
                  //   rightDiceNumber = Random().nextInt(6) + 1;
                  // });
                },
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  diceNumChange();
                  // setState(() {
                  //   rightDiceNumber = Random().nextInt(6)+1;
                  //   leftDiceNumber = Random().nextInt(6) + 1;
                  // });
                },
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Text(
          "Left Side Dice Number is: $leftDiceNumber",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        Text(
          "Right Side Dice Number is: $rightDiceNumber",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}
