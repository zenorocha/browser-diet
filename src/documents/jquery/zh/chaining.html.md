---
ignored: true
order: 11
title: 利用方法链
---

链式意味着你可以在一个jQuery方法后面紧跟着执行另一个方法，无需重新指定选择器。几乎所有返回jQuery对象的jQuery方法都支持链式操作。

```js
$("#object").addClass("foo").css("border-color", "#ccc").width(200);
```

测试表明，不使用链式操作会使得代码执行变慢。

```js
$("#object").addClass("foo");
$("#object").css("border-color","#f0f");
$("#object").width(200);
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-chaining)*
