---
order: 8
title: 使用for，而不是each
---

原生Javascript中的函数执行几乎总是要比jQuery快一些。正因为如此，请使用Javascript的`for`循环，不要使用`jQuery.each`方法。

但是请注意，虽然`for in`是原生的，可是在许多情况下，它的性能要比`jQuery.each`差一些。

在`for`循环迭代时，请记得缓存集合的长度。

```js
for ( var i = 0, len = a.length; i < len; i++ ) {
	e = a[i];
}
```

在社区中，关于`while`和`for`循环的反向使用问题是一个热门话题，而这经常被认为是最快的迭代方式。然而实际上，这通常只是为了防止循环不够清晰。

```js
// 逆转 while
while ( i-- ) {
  // ...
}

// 逆转 for
for ( var i = array.length; i--; ) {
  // ...
}
```

*> [Results on JSPerf](http://jsperf.com/browser-diet-jquery-each-vs-for-loop) / [参考](https://github.com/zenorocha/browser-diet/wiki/References#use-for-instead-of-each)*
