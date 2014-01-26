---
order: 14
title: 避免不必要的DOM操作
---

当你获得DOM而又什么都不做时，这简直就是在杀死宝贵的生命。

说真的，浏览器遍历DOM元素的代价是昂贵的。虽然Javascript引擎变得越来越强大，越来越快速，但是还是应该最大化的优化查询DOM树的操作。

最简单的替代方案就是，当一个元素会出现多次时，将它保存在一个变量中，这样的话你就没必要每次都去查询DOM树了。

```js
// really bad!
for (var i = 0; i < 100; i++) {
  document.getElementById("myList").innerHTML += "<span>" + i + "</span>";
}
```

```js
// much better :)
var myList = "";

for (var i = 0; i < 100; i++) {
  myList += "<span>" + i + "</span>";
}

document.getElementById("myList").innerHTML = myList;
```

```js
// much *much* better :)
var myListHTML = document.getElementById("myList").innerHTML;

for (var i = 0; i < 100; i++) {
  myListHTML += "<span>" + i + "</span>";
}

*> [Results on JSPerf](http://jsperf.com/browser-diet-dom-manipulation/11)*
