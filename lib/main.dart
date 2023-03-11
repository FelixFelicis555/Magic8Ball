import 'package:flutter/material.dart';

import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask me anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  int ballNumber = 1;
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}

/*

  ! What we'll make
   You gonna be building an app by yourself

   Here what it does : 

   * Magic 8 Ball - A decision Making app which you can ask to answer all of your difficult life questions such as should i work or should I watch netflix? Ok It says I have no idea  Think about all of your other life questions
   
   * This app has whole bunch of random images,everytime you tap on the magic_8_ball it'll give you new answer

*/