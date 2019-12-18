# flutter_practice

A new Flutter application.

## Wrap



## Screens aren't rectangles.

Row and columns are great for laying out widgets.
小控件和适合纵向和横向的布局。

But sometimes, you run out of room.
但有时你可能没有足够的空间。

One of the widgets that can help is Wrap.
Wrap是一个有助于改善此问题的小工具。

Wrap lays out its children, one at a time, a lot like a row or column.
Wrap为单个的图标逐一进行布局，饼构成纵向或横向的一列。

But when it runs out of space, it just wraps to the next line.
但当空间不足的时候，便会新增一行

```
Wrap(
    children: [
        MyWidget(),
        MyWidget(),
        MyWidget(),
    ],
)
```
You can use the direction property to tell it whether to run vertically or horizontally.

```
Wrap(
    direction: Axis.vertical,
    children: [
        MyWidget(),
        MyWidget(),
        MyWidget(),
        MyWidget(),
        MyWidget(),
    ],
)
```

And there's alignment and spacing properties as well.


```
Wrap(
    direction: WrapAlignment.end,
    spacing: 10.0,
    runSpacing 20.0,
    children: [
        MyWidget(),
        MyWidget(),
        MyWidget(),
        MyWidget(),
        MyWidget(),
    ],
)
```

Wrap works really well with things like dialog buttons and chips...

[Wrap](https://api.flutter.dev/flutter/widgets/Wrap-class.html)
