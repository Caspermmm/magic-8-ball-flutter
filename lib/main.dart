import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Ballpage(),
      ),
    );

class Ballpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
    body: Ball(
    ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int Number = 1;

  void ballNumber() {
    setState(() {
     Number = Random().nextInt(4)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
          print('$Number');
          ballNumber();
          },
          child: Image.asset('images/ball$Number.png'),
      ),
    );
  }
}