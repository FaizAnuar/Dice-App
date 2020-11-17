import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("dice1.jpg");
  AssetImage two = AssetImage("dice2.jpg");
  AssetImage three = AssetImage("dice3.jpg");
  AssetImage four = AssetImage("dice4.jpg");
  AssetImage five = AssetImage("dice5.jpg");
  AssetImage six = AssetImage("dice6.jpg");

  AssetImage diceimage;
  AssetImage diceimage2;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      diceimage2 = one;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    int random2 = (1 + Random().nextInt(6));

    AssetImage newImage;
    AssetImage newImage2;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    switch (random2) {
      case 1:
        newImage2 = one;
        break;
      case 2:
        newImage2 = two;
        break;
      case 3:
        newImage2 = three;
        break;
      case 4:
        newImage2 = four;
        break;
      case 5:
        newImage2 = five;
        break;
      case 6:
        newImage2 = six;
        break;
    }
    setState(() {
      diceimage = newImage;
      diceimage2 = newImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text(
          'Lucky Dice',
          style: TextStyle(
            fontFamily: 'Lobster',
            fontSize: 45,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceimage,
                width: 200.0,
                height: 200.0,
              ),
              Image(
                image: diceimage2,
                width: 200.0,
                height: 200.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  color: Colors.orange[300],
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text(
                    'Roll the dice!!!',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontSize: 30,
                      color: Colors.red[600],
                    ),
                  ),
                  onPressed: rollDice,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
