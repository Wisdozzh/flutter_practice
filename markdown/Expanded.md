# flutter_practice

A new Flutter application.

## SafeArea



## Extra space?

Almost every Flutter layout uses rows and columns,and they're pretty cool
几乎每个Flutter布局都使用行和列,它们非常酷。

They can hug their children tightly or spread them out and relax.
他们可以紧紧地拥抱自己的子项，或将他们分散开并放松。

But what if you'd like one of those children to stretch and fill the extra space?
但是如果您想让其中一个子项伸展并填补额外的空间呢？

Just wrap it in an Expanded widget and watch it grow
只需将其包装在Expanded小工具中然后观察它的增长情况

When a row or column lays out its children，it does the inflexible ones first.
当行或列布置其子项时，它首先执行不灵活的子项。

Then it divides the remaining space among the flexible ones, like Expanded.
然后它将剩余空间划分给灵活的子项，如Expanded.

```
Row(
    children: [
        MyWidget(),
        Expanded(
            child: MyWidget()
        ),
        MyWidget(),
    ],
)
```
You can even set a flex factor

```
Expanded(
    flex: 2,
    child: Container()
),
```

[Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html)
