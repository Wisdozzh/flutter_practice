import 'package:flutter/material.dart';

void main() => runApp(TablePractice());

class TablePractice extends StatefulWidget {
  @override
  _TablePracticeState createState() => _TablePracticeState();
}

class _TablePracticeState extends State<TablePractice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 500,
          width: 375,
          child: Column(
            children: <Widget>[
              Container(
                height: 30.0,
                color: Colors.blue,
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Table(
                  columnWidths: {
                    0: FixedColumnWidth(56.0),
                    7: FixedColumnWidth(54.0),
                  },
                  border: TableBorder.all(color: Colors.white, width: 1.0),
                  children: [
                    TableRow(children: [
                      Container(
                          height: 38.0,
                          color: Color(0xFF5d64c6),
                          child: Center(
                            child: Text(
                              '姓名',
                              style: TextStyle(fontSize: 13.0),
                            ),
                          )),
                      Container(
                          height: 38.0,
                          color: Color(0xFF5d64c6),
                          child: Center(
                            child: Text(
                              '听音',
                              style: TextStyle(fontSize: 13.0),
                            ),
                          )),
                      Container(
                          height: 38.0,
                          color: Color(0xFF5d64c6),
                          child: Center(
                            child: Text(
                              '动画',
                              style: TextStyle(fontSize: 13.0),
                            ),
                          )),
                      Container(
                          height: 38.0,
                          color: Color(0xFF5d64c6),
                          child: Center(
                            child: Text(
                              '分级',
                              style: TextStyle(fontSize: 13.0),
                            ),
                          )),
                      Container(
                          height: 38.0,
                          color: Color(0xFF5d64c6),
                          child: Center(
                            child: Text(
                              '课外',
                              style: TextStyle(fontSize: 13.0),
                            ),
                          )),
                      Container(
                          height: 38.0,
                          color: Color(0xFF5d64c6),
                          child: Center(
                            child: Text(
                              '配音',
                              style: TextStyle(fontSize: 13.0),
                            ),
                          )),
                      Container(
                          height: 38.0,
                          color: Color(0xFF5d64c6),
                          child: Center(
                            child: Text(
                              '视频秀',
                              style: TextStyle(fontSize: 13.0),
                            ),
                          )),
                      Container(
                          height: 38.0,
                          color: Color(0xFF5d64c6),
                          child: Center(
                            child: Text(
                              '奖券',
                              style: TextStyle(fontSize: 13.0),
                            ),
                          )),
                    ]),
                  ],
                ),
              ),
              Expanded(
                  child:ListView.separated(
                      shrinkWrap: true,
//                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => _listViewItemBuilder(index),
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.red,
                        height: 0,
                      ),
                      itemCount: 20)
//              child: ListView.builder(
////                  physics: NeverScrollableScrollPhysics(),
//                  itemBuilder: (context, index) => _listViewItemBuilder(index),
//                  itemCount: 20)
              ),
            ],
          ),
        ),
      )
    ));
  }

  Widget _listViewItemBuilder(int index) {
//    return Table(
//      columnWidths: {
//        0: FixedColumnWidth(56.0),
//        7: FixedColumnWidth(54.0),
//      },
//      children: [
//        TableRow(children: [
//          Container(
//              height: 38.0,
//              child: Center(
//                child: Text(
//                  '事发后大家快来大家来说',
//                  style: TextStyle(fontSize: 13.0),
//                  maxLines: 2,
//                  overflow: TextOverflow.ellipsis,
//                ),
//              )),
//          Container(
//              height: 38.0,
//              child: Center(
//                child: Text(
//                  '$index',
//                  style: TextStyle(fontSize: 13.0),
//                ),
//              )),
//          Container(
//              height: 38.0,
//              child: Center(
//                child: Text(
//                  '$index',
//                  style: TextStyle(fontSize: 13.0),
//                ),
//              )),
//          Container(
//              height: 38.0,
//              child: Center(
//                child: Text(
//                  '$index',
//                  style: TextStyle(fontSize: 13.0),
//                ),
//              )),
//          Container(
//              height: 38.0,
//              child: Center(
//                child: Text(
//                  '$index',
//                  style: TextStyle(fontSize: 13.0),
//                ),
//              )),
//          Container(
//              height: 38.0,
//              child: Center(
//                child: Text(
//                  '$index',
//                  style: TextStyle(fontSize: 13.0),
//                ),
//              )),
//          Container(
//              height: 38.0,
//              child: Center(
//                child: Text(
//                  '$index',
//                  style: TextStyle(fontSize: 13.0),
//                ),
//              )),
//          Container(
//              height: 38.0,
//              child: Center(
//                child: Text(
//                  '$index',
//                  style: TextStyle(fontSize: 13.0),
//                ),
//              )),
//        ]),
//      ],
//    );
  return Container(height: 100,color: Colors.green,);
  }
}
