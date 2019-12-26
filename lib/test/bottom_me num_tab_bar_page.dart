import 'package:flutter/material.dart';

void main() => runApp(BotomeMenumTabBarPage());

/**
 * 有状态StatefulWidget
 *  继承于 StatefulWidget，通过 State 的 build 方法去构建控件
 */
class BotomeMenumTabBarPage extends StatefulWidget {
  ////通过构造方法传值
  BotomeMenumTabBarPage();

  //主要是负责创建state
  @override
  BotomeMenumTabBarPageState createState() => BotomeMenumTabBarPageState();
}

/**
 * 在 State 中,可以动态改变数据
 * 在 setState 之后，改变的数据会触发 Widget 重新构建刷新
 */
class BotomeMenumTabBarPageState extends State<BotomeMenumTabBarPage>
    with SingleTickerProviderStateMixin {
  BotomeMenumTabBarPageState();

  TabController tabController;

  @override
  void initState() {
    ///初始化，这个函数在生命周期中只调用一次
    super.initState();
    tabController = new TabController(length: pages.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    //构建页面
    return buildBottomTabScaffold();
  }

  //当前显示页面的
  int currentIndex = 0;

  //点击导航项是要显示的页面
  final pages = [ChildItemView("首页"), ChildItemView("动态"), ChildItemView("我的")];

  Widget buildBottomTabScaffold() {
    return MaterialApp(
      home: Scaffold(
        body: TabBarView(controller: tabController, children: pages),
        bottomNavigationBar: new Material(
          color: Colors.blue,
          child: TabBar(
            controller: tabController,
//            tabs: <Tab>[
//              new Tab(text: "首页", icon: new Icon(Icons.home)),
//              new Tab(text: "发现", icon: new Icon(Icons.find_in_page)),
//              new Tab(text: "动态", icon: new Icon(Icons.message)),
//              new Tab(text: "我的", icon: new Icon(Icons.person)),
//            ],
            tabs: <Widget>[
              _buildTabItem(),
              _buildMiddleTabItem(),
              _buildTabItem(),
            ],
            indicatorWeight: 0.1,
          ),
        ),
      ),
    );
  }

  Widget _buildMiddleTabItem() {
    return  Container(
      height: 60.0,
      child: OverflowBox(
        maxHeight: 100,//2 不能小于父容器的高度180
        child: new Container(
          color: Colors.deepOrange,
          width: 600,
          height:100,
        ),
      ),
    );
//    return Container(
//      height: 60.0,
//      child: Column(
//        mainAxisSize: MainAxisSize.min,
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          SizedBox(
//            height: 21.0,
//          ),
//          Text(
//            '新建作业',
//          )
//        ],
//      ),
//    );
  }

  Widget _buildTabItem() {
    return SizedBox(
      height: 60.0,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.opacity),
              Container(
                margin: EdgeInsets.only(
                  top: 4.0,
                ),
                child: Text('你哈'),
              )
            ],
          ),
        ),
      ),
    );
  }

  /*切换页面*/
  void _changePage(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}

//子页面
class ChildItemView extends StatefulWidget {
  String _title;

  ChildItemView(this._title);

  @override
  _ChildItemViewState createState() => _ChildItemViewState();
}

class _ChildItemViewState extends State<ChildItemView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(widget._title)),
    );
  }
}
