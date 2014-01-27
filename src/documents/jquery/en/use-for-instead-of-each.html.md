---
order: 10
title: Use for instead of each
---

The use of native JavaScript functions nearly always results in faster execution than the ones in jQuery. For this reason, instead of using the `jQuery.each` method, use JavaScript's own `for` loop.

But pay attention, even though `for in` is native, in many cases it performs worse than `jQuery.each`.

And the tried and tested `for` loop gives us another opportunity to speed things up by caching the length of collections we're iterating over.

```js
for ( var i = 0, len = a.length; i < len; i++ ) {
	e = a[i];
}
```

The use of reverse `while` and reverse `for` loops is a hot topic in the community and are frequently cited as the fastest form of iteration. However it's typically avoided for being less legible.

```js
// reverse while
while ( i-- ) {
  // ...
}

// reverse for
for ( var i = array.length; i--; ) {
  // ...
}
```

*> [Results on JSPerf](http://jsperf.com/browser-diet-jquery-each-vs-for-loop) / [References](https://github.com/zenorocha/browser-diet/wiki/References#use-for-instead-of-each)*
