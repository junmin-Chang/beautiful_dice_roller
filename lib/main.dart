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
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                    onPressed: () {
                      rollDice();
                    }, child: Image.asset('images/dice$leftDiceNumber.png')),
              ),
              Expanded(
                child: FlatButton(
                    onPressed: () {
                      rollDice();
                    }, child: Image.asset('images/dice$rightDiceNumber.png')),
              ),


            ],
          ),


        ),
        SizedBox(height: 50.0,),

        Material(
          child: MaterialButton(
            child: Text('Roll!',
            style: TextStyle(
              fontFamily: 'Pacifico2',
              fontSize: 20.0,

            ),),

            onPressed: () {
              rollDice();
            },

          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          color: Colors.red[100],
          elevation: 25.0,
        )
      ],
    );
  }

  void rollDice() {

    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
}

