import 'dart:math';

import 'package:flutter/material.dart';


void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask me Anything'),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int numberBall = 2;

  void changeBall() {
    setState(() {
      numberBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            child: Expanded(
              flex: 3,
              child: Image.asset('images/ball$numberBall.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                changeBall();
              },
              child: Image.asset('images/ON_button1.png', width: 15,),
            ),
          ),
        ],
      ),
    );
  }
}
