---
order: 9
title: Don't use jQuery...
---

...unless it's absolutely necessary. :)

Sometimes vanilla JavaScript can be even simpler than jQuery.

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="http://browserdiet.com/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

Why use the `attr()` method to search for an ID?

```js
$('a').on('click', function() {
  console.log( $(this).attr('id') );
});
```

If you can can get this attribute natively through `this`:

```js
$('a').on('click', function() {
  console.log( this.id );
});
```

And it's faster.

*> [Results on JSPerf](http://jsperf.com/browser-diet-this-attr-id-vs-this-id) / [References](https://github.com/zenorocha/browser-diet/wiki/References#dont-use-jquery)*