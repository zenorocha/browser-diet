---
order: 9
title: Selectors
---

在使用jQuery时，选择器也是一个重要的问题。有许多方法可以从DOM中选取元素，但这不意味着这些方法有相同的性能，你可以用classes、IDs或者find()、children()等方法选取元素。

在这些方法中，使用ID选择器是最快的，因为它是原生DOM操作。

```js
$("#foo");
```

*[> Results on JSPerf](http://jsperf.com/browser-diet-jquery-selectors)*
