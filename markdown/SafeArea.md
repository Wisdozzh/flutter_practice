# flutter_practice

A new Flutter application.

## SafeArea



## Screens aren't rectangles.

On today's devices, apps rarely get a neat little rectangle to run in.
现今的智能设备已经不能提供应用程序规整的矩形界面来运行了

Notification bars and controls can creep in, and rounded corners and notches nip at your content,complicating layouts.
消息提示拦总是不断闪出,而一些圆角或是带凹槽的屏幕,也会让应用程序的布局变得更加复杂。

That's why Flutter has SafeArea!
这就是为什么Flutter集成了SafeArea（安全区域）功能。

It uses a MediaQuery to check the dimensions of the screen and pads its shell to match.
它使用MediaQuery来检测屏幕的尺寸使应用程序的大小能与屏幕匹配。

keep your contents safe on both iOS and Android.

```
SafeArea(
    child: ListView(
        children: List.generate(
            100,
            (i) => Text('This is some text')
        ),
    ),
)
```
You can even specify which dimensions you care about.

```
SafeArea(
    child: ListView()
    top: true,
    bottom: true,
    left: false,
    right: true,
)
```

wrapping the body of a Scaffold works great.


```
@override
Widget build(BuildContext context) {
    return SafeArea(
        body:SafeArea(
            child:TonsOfOtherWidgets(),
        )
    ),
}
```

[SafeArea](https://api.flutter.dev/flutter/widgets/SafeArea-class.html)
