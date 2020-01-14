# flutter_practice

A new Flutter application.

## FutureBuilder


Flutter and Dart are asynchronous by nature.
在Flutter中，很容易就能完全移除一个控件。

With Dart's Futures, you can manage IO without worrying about threads or deadlocks.
你只要在重新创建中移除它即可！

But how do you build widgets when a Future is involved?
但如果你想要让一个控件消失而它原来的位置仍然被保留呢？

Enter FutureBuilder, the future of handling, well, futures.

```
FutureBuilder(
    future: http.get('http://awesome.data'),
    builder: _myBuilderFunction,
)
```

FutureBuilder lets you easily determine the current state of a future and choose what to show while the data's loading and when it's available.
这样其他的图标就能留在它们原来的位置上，就如在iOS中的hidden，Android中的invisible

Start by giving FutureBuilder a future, and then a builder.
那就请试一试Opacity这个控件吧！


```
FutureBuilder(
    future: http.get('http://awesome.data'),
    builder: (context, snapshot) {
        return AwesomeData(snapshot.data);
    }   
)
```


Just wrap your widget with Opacity, set the value to zero, and your're all set!
只要使用Opacity来包装你的控件，将opacity的值设置为0，那么一切就都配置好了！

```
final widgets = [
    MyWidget(Colors.green),
    Opacity(
        opacity:0.0
        child:MyWidget(Colors.blue),
    ),
    MyWidget(Colors.yellow),
];
```
You can use Opacity for blending one child of a stack onto another.
如果你想用Opacity激昂一个子控件与另一层叠在一起。

And if you want to animate a changing Opacity, there's an AnimatedOpacity widget too.
或者你想创建一个动态的Opacity，我们也有一个叫AnimatedOpacity的控件

Just give an Opacity and a duration, and when you rebuild, it animates the change automatically.
你只要给Opacity添加一个时长，然后当你进行rebuild时，它就会自动创建动画

```
Stack(
    children:[
        MyImageWidget(),
        AnimatedOpacity(
            duration: _myDuration,
            opacity: _MyOpacity,
            child: MyGradientWidget(),
        ),
    ],
)

setState(() =>
    _myOpacity = 0.0);
```


[Wrap](https://api.flutter.dev/flutter/widgets/Wrap-class.html)
