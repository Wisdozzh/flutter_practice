import 'package:flutter/material.dart';

void main() => runApp(WrapPractice());

class WrapPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Wrap(
          direction: Axis.horizontal,
          spacing: 10.0,
          runSpacing: 20.0,
          children: <Widget>[
            Container(
              color: Colors.green,
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.blue,
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.black,
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.yellow,
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.orange,
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.red,
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.grey,
              width: 80.0,
              height: 80.0,
            ),
            Container(
              color: Colors.cyan,
              width: 80.0,
              height: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
