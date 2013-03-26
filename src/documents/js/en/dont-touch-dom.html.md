---
order: 14
title: Avoid unnecessary DOM manipulations
---

Everytime you touch the DOM without needing to do that a panda dies.

Seriously, browse by DOM elements is costly. Although JavaScript engines become increasingly powerful and fast, always prefer to optimize maximum queries in the DOM tree.

One of the simplest alternatives to be adopted is, when an element has to be accessed more than once, save it in a variable, so you don't need more than one query in the DOM.

```js
// really bad!
for (var i = 0; i < 100; i++) {
  document.getElementById("myList").innerHTML += "<span>" + i + "</span>";
}

// much better :)
var myList = "";

for (var i = 0; i < 100; i++) {
  myList += "<span>" + i + "</span>";
}

document.getElementById("myList").innerHTML = myList;
```

*> [Results on JSPerf](http://jsperf.com/browser-diet-dom-manipulation/5)*