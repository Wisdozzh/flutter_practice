import 'package:flutter/material.dart';

void main() => runApp(SafeAreaPractice());

class SafeAreaPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am SafeAreaPractice'),
        ),
        body: Container(
          color: Colors.blue,
          child: Center(
            child: Text(
                '阿大叔大叔大妈肯德基阿里的灵魂拉屎的季节就啊的设计开发v包括超喜欢北方i少部分i无比u表弟叫阿自己的空间中包括加扎尼加款智能监控i阿森纳i家'),
          )),
      ),
    );
  }
}
