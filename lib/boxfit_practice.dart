import 'package:flutter/material.dart';

void main() => runApp(BoxFitPractice());

class BoxFitPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('I am BoxFit'),
          ),
          body: Column(
            children: <Widget>[
              Image.asset(
                'assets/image/ranking_trophy_left.png',
                width: 331 / 4,
                height: 431 / 4,
              ),
//              Image.asset(
//                'assets/image/ranking_trophy_left.png',
//                width: 331 / 2,
//                height: 431,
//                fit: BoxFit.cover,
//              ),
              Image.asset(
                'assets/image/ranking_trophy_left.png',
                width: 500.0,
                height: 500.0,
                fit: BoxFit.contain,
                centerSlice: new Rect.fromCircle(
                    center: const Offset(10.0, 10.0), radius: 10.0),
              ),
            ],
          )),
    );
  }
}
