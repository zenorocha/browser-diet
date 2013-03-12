---
order: 12
title: Selectors
---

Selectors is one of the most important issues in the use of jQuery. There are many differents ways to select an element from the DOM, but that doesn't mean they have the same performance, you can select an element using classes, IDs or methods like `find()`, `children()`.

Among all of them, select an ID is the fastest one, because its based on a native DOM operation:

```js
$("#foo");
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*