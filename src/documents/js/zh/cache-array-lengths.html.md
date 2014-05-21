---
order: 16
title: 缓存数组长度
---

循环无疑是和Javascript性能非常相关的一部分。试着优化循环的逻辑，从而让每次循环更加的高效。

要做到这一点，方法之一是存储数组的长度，这样的话，在每次循环时都不用重新计算。

```js
var arr = new Array(1000),
    len, i;

for (i = 0; i < arr.length; i++) {
  // Bad - size needs to be recalculated 1000 times
}

for (i = 0, len = arr.length; i < len; i++) {
  // Good - size is calculated only 1 time and then stored
}
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-cache-array-length/10/)*

**> 注解:** *虽然现代浏览器引擎会自动优化这个过程，但是不要忘记还有旧的浏览器*

在迭代`document.getElementsByTagName('a')`等类似方法生成的HTML节点数组（*NodeList*）时，缓存数组长度尤为关键。这些集合通常被认为是“活的”，也就是说，当他们所对应的元素发生变化时，他们会被自动更新。

```js
var links = document.getElementsByTagName('a'),
    len, i;

for (i = 0; i < links.length; i++) {
  // Bad - each iteration the list of links will be recalculated to see if there was a change
}

for (i = 0, len = links.length; i < len; i++) {
  // Good - the list size is first obtained and stored, then compared each iteration
}

// Terrible: infinite loop example
for (i = 0; i < links.length; i++) {
  document.body.appendChild(document.createElement('a'));
  // each iteration the list of links increases, never satisfying the termination condition of the loop
  // this would not happen if the size of the list was stored and used as a condition
}
```

*> [参考](https://github.com/zenorocha/browser-diet/wiki/References#cache-array-lengths)*