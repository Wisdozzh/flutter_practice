# flutter_practice

A new Flutter application.

## AnimatedContainer



## Flutter supports explicit animations

Flutter has a lot of widgets to help with explicit animations
Flutter有很多用于控制显式动画的控件

ones that you, the developer, code up.
这些动画是由你们开发者设计出来的。

But there are also widgets for implicit animations, those that animate changes for you.
Wrap是一个有助于改善此问题的小工具,你可以根据你的需求来使用它们

A good one to know is AnimatedContainer.
这里向你推荐一款部件AnimatedCntainer.

You can build it once with a particulate attribute, like color.
你剋用某个特定的属性 例如色彩来实施一次开发

```
@override
Widget build(BuildContext context) {
    return AnimatedContainer(
        color: _color,  // (0xFF00BB00)
        duration: _myDuration,
        child: SomeOtherWidget(),
    );
}
```
And when you rebuild it with a different value,say, in response to a setState call,
当你使用一个不同的值 例如回应setState调用来实施再次开发时

```
setState(() {
    _color = Color(0xFF0000FF);
})
```

AnimatedContainer performs a linear interpolation between the two values.
AnimatedContainer在两个值之间实施线性插值法

And it's more than just colors.
它不止颜色

You can animate borders, border radii, background images, shadows, gradients, shapes, padding, width, height, alignment, transform, and more.
可以让边界、边界半径、背景图片、阴影、倾斜度、形状、填充、宽度、高度、对准、变化等等都动起来。

The length of the animation is controlled by the duration parameter,
动画的长度由持续时间参数控制

and you can alson specify your own curve to customize the effect.
你可以制定你自己的曲线来个性化效果

```
return AnimatedContainer(
    color: _color,
    duration: myDuration,
    curve: Curve.bounceIn,
    child: SomeOtherWidget(),
)
```

There are a bunch of other widgets to help with implicit animations, too.
我们还有更多控制隐式动画的控件

[AnimatedContainer](https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html)
