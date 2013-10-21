---
ignored: true
order: 11
title: Take advantage of method chaining
---

Chaining means you can execute one jQuery method right after the other, without needing to re-specify a selector. Nearly all jQuery methods allow chaining by returning a jQuery object.

```js
$("#object").addClass("foo").css("border-color", "#ccc").width(200);
```

Tests show not chaining can be slower.

```js
$("#object").addClass("foo");
$("#object").css("border-color","#f0f");
$("#object").width(200);
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-chaining)*
