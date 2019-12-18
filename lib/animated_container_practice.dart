import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(AnimatedContainerPractice());

class AnimatedContainerPractice extends StatefulWidget {
  @override
  _AnimatedContainerPracticeState createState() =>
      _AnimatedContainerPracticeState();
}

class _AnimatedContainerPracticeState extends State<AnimatedContainerPractice> {
  var _colors = [
    Colors.red,
    Colors.green,
    Colors.amber,
    Colors.blue,
    Colors.deepPurple,
  ];

  var _alignments = [
    Alignment.center,
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.topRight,
    Alignment.topLeft
  ];

  double _weight = 300;
  double _height = 300;

  int index = 0;

  next() {
    setState(() {
      if (_weight == 300) {
        _weight -= 100;
        _height -= 100;
      } else {
        _weight += 100;
        _height += 100;
      }
      index = Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('AnimatedContainer'),
          ),
          body: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  next();
                });
              },
              child: AnimatedContainer(
                width: _weight,
                height: _height,
                color: _colors[index],
                alignment: _alignments[index],
                curve: Curves.fastOutSlowIn,
                duration: Duration(milliseconds: 500),
                child: Text(
                  'A',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
