import 'package:flutter/material.dart';

import '../dotted_border.dart';

void main() => runApp(DashTest());

class DashTest extends StatefulWidget {
  @override
  _DashTestState createState() => _DashTestState();
}

class _DashTestState extends State<DashTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dotted Border'),
          ),
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 8,
                  children: <Widget>[
                    rectBorderWidget,
                    roundedRectBorderWidget,
                    customBorder,
                    roundStrokeCap,
                    solidBorder,
                  ],
                ),
              ),
            ),
          )),
    );
  }

  Widget get rectBorderWidget {
    return DottedBorder(
      dashPattern: [8, 4],
      strokeWidth: 2,
      child: Container(
        height: 200,
        width: 120,
        color: Colors.red,
      ),
    );
  }

  Widget get roundedRectBorderWidget {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      padding: EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Container(
          height: 200,
          width: 120,
          color: Colors.amber,
        ),
      ),
    );
  }

  Widget get customBorder {
    Path customPath = Path()
      ..moveTo(20, 20)
      ..lineTo(50, 100)
      ..lineTo(20, 200)
      ..lineTo(100, 100)
      ..lineTo(20, 20);

    return DottedBorder(
      customPath: customPath,
      color: Colors.indigo,
      dashPattern: [8, 4],
      strokeWidth: 2,
      child: Container(
        height: 220,
        width: 120,
        color: Colors.green.withAlpha(20),
      ),
    );
  }

  Widget get roundStrokeCap {
    return DottedBorder(
      dashPattern: [4, 2],
      strokeWidth: 1,
      color: Color(0xFFC1C1C6),
      strokeCap: StrokeCap.round,
      borderType: BorderType.RRect,
      radius: Radius.circular(5),
      child: Container(
        height: 200,
        width: 120,
        color: Colors.red,
      ),
    );
  }

  Widget get solidBorder {
    return DottedBorder(
      dashPattern: [4, 3],
      strokeWidth: 2,
      strokeCap: StrokeCap.round,
      child: Container(
        color: Colors.green,
        height: 200,
        width: 120,
      ),
    );
  }
}
