---
order: 9
title: Selectors
---

Selectors is one of the most important issues in the use of jQuery. There are many different ways to select an element from the DOM, but that doesn't mean they have the same performance, you can select an element using classes, IDs or methods like `find()`, `children()`.

Entre todos eles, selecionar um ID é o mais rápido, porque é baseado em uma operação DOM nativa.

```js
$("#foo");
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
