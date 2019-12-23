import 'package:flutter/material.dart';

import 'fab_bottom_app_bar.dart';
import 'fab_with_icons.dart';
import 'layout.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'BottomAppBar with FAB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  String _lastSelected = 'TAB: 0';

  List<FABBottomAppBarItem> bottomAppBarItems = [
    FABBottomAppBarItem(selectedAsset: 'assets/image/home_left_selected.png', unSelectedAsset: 'assets/image/home_left_unselected.png', text: '作业数据'),
    FABBottomAppBarItem(selectedAsset: 'assets/image/home_right_selected.png', unSelectedAsset: 'assets/image/home_right_unselected.png',  text: '汇报数据')];

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = 'FAB: $index';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          _lastSelected,
          style: TextStyle(fontSize: 32.0),
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: '新建作业',
//        color: Color(0xFF666666),
//        selectedColor: Color(0xff5d64c6),
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: bottomAppBarItems
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab1(
          context), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildFab(BuildContext context) {
    final icons = [ Icons.sms, Icons.mail, Icons.phone ];
    return AnchoredOverlay(
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - icons.length * 35.0),
          child: FabWithIcons(
            icons: icons,
            onIconTapped: _selectedFab,
          ),
        );
      },
      child: Container(
        color: Colors.orange,
//        padding: EdgeInsets.all(4.5),
        child: FloatingActionButton(
          onPressed: () { },
          tooltip: 'Increment',
          child: Image.asset('assets/image/home_add.png', width: 20.0, height: 20.0, fit: BoxFit.fill,),
          elevation: 2.0,
        ),
      )
    );
  }

  Widget _buildFab1(BuildContext context) {
    final icons = [ Icons.sms, Icons.mail, Icons.phone ];
    return AnchoredOverlay(
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - icons.length * 35.0),
          child: FabWithIcons(
            icons: icons,
            onIconTapped: _selectedFab,
          ),
        );
      },
      child: Container(
//        color: Colors.orange,
//        padding: EdgeInsets.all(4.5),
        child: FloatingActionButton(
          onPressed: () { },
          tooltip: 'Increment',
           child: Icon(Icons.add), backgroundColor: Color(0xFF5D64C6),
          elevation: 2.0,
          mini: true,
        ),
      )
    );
  }
}