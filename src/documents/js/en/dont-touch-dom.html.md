---
order: 13
title: Avoid unnecessary DOM manipulations
---

Everytime you touch the DOM without needing to do so, a Panda dies.

Seriously, browsing by DOM elements is costly. Although JavaScript engines are becoming increasingly powerful and fast, always prefer to optimize queries of the DOM tree.

One of the simplest optimizations is the caching of frequently accessed DOM elements. For example, instead of querying the DOM every iteration of a loop, query it once and save the result in a variable, using that every iteration of the loop instead.

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
```

*> [Results on JSPerf](http://jsperf.com/browser-diet-dom-manipulation/11)*
