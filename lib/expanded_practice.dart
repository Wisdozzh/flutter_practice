import 'package:flutter/material.dart';

void main() => runApp(ExpandedPractice());

class ExpandedPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am EdpandedPractice'),
        ),
        body: Row(
          children: <Widget>[
            Container(
              width: 80.0,
              height: 30.0,
              color: Colors.blue,
            ),
            Expanded(
              child: Container(
                height: 30.0,
                color: Colors.yellow,
              ),
            ),
            Container(
              height: 30.0,
              width: 70.0,
              color: Colors.orange,
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 30.0,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
