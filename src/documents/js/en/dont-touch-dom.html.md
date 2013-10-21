---
order: 14
title: Avoid unnecessary DOM manipulations
---

Everytime you touch the DOM, unnecessarily, a panda dies.

Seriously, navigating the DOM is costly. Even though JavaScript engines have become increasingly powerful and fast, always try to optimize queries of the DOM.

One of the simplest practices to adopt is, when an element has to be accessed more than once, save it in a variable, so you don't need to query the DOM multiple times.

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

*> [Results on JSPerf](http://jsperf.com/browser-diet-dom-manipulation/5)*
