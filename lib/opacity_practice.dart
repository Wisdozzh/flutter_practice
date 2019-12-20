import 'package:flutter/material.dart';

void main() => runApp(OpacityPractice());

class OpacityPractice extends StatefulWidget {
  @override
  _OpacityPracticeState createState() => _OpacityPracticeState();
}

class _OpacityPracticeState extends State<OpacityPractice> {
  double _opacity = 0.5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am Reply Already submit '),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: 50.0,
              height: 50.0,
              color: Colors.green,
            ),
            Opacity(
              opacity: 0.0,
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.red,
              ),
            ),
            Container(
              width: 50.0,
              height: 50.0,
              color: Colors.yellow,
            ),
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/image/ranking_trophy_left.png',
                  width: 100.0,
                  height: 100.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _changeOpacity();
                    });
                  },
                  child: AnimatedOpacity(
                      duration: Duration(milliseconds: 500),
                      opacity: _opacity,
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.green, Colors.orange]),
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _changeOpacity() {
    if (_opacity == 0) {
      _opacity = 0.5;
    } else {
      _opacity = 0.0;
    }
  }
}
