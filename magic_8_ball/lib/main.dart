import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue
      ),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: const Color.fromRGBO(0, 0, 55, 1.0),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget{
  @override
  State<Ball> createState() => _Ball();
}

class _Ball extends State<Ball>{

  int _ballNumber = 0;

  void _rodaBall() {
    setState(() {
      _ballNumber = Random().nextInt(4);
      print(_ballNumber);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: _rodaBall,
                  child: Image.asset('images/ball${_ballNumber+1}.png',
                    width: 250,
                    height: 250,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}