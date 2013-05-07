---
order: 8
title: Nie używaj jQuery...
---

...chyba, że jest to absolutnie konieczne. :)

Czasami czysty JavaScript może być jeszcze prostszy niż jQuery.

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="http://browserdiet.com/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

Czemu używasz metody `attr()` do znalezienia wartości ID?

```js
$('a').on('click', function() {
  console.log( $(this).attr('id') );
});
```

Przecież dostaniesz ten sam atrybut natywnie poprzez `this`:

```js
$('a').on('click', function() {
  console.log( this.id );
});
```

Do tego szybciej.

*> [Wyniki w JSPerf](http://jsperf.com/browser-diet-this-attr-id-vs-this-id) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#dont-use-jquery)*
