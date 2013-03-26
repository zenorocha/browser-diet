---
order: 17
title: Cache DOM elements already visited
---

Browse by DOM elements is costly. Although the JavaScript engines become increasingly powerful and fast, always prefer to optimize maximum queries in the DOM tree.

One of the simplest alternatives to be adopted is, when an element has to be accessed more than once, save it in a variable, so you don't need more than one query in the DOM.

```js
var element = document.getElementById("my-element");
var height = elemento.clientHeight;
var width = elemento.clientWidth;

element.className = "new-class";
```

*> [Results on JSPerf](http://jsperf.com/browser-diet-dom-manipulation)*