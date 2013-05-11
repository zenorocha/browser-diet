---
order: 9
title: N'utilisez pas jQuery
---

...sauf si vous en avez absolument besoin. :)

Parfois du javascript de base peut-être plus simple que jQuery.

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="http://browserdiet.com/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

Pourquoi utiliser la methode `attr()` pour chercher un ID ?

```js
$('a').on('click', function() {
  console.log( $(this).attr('id') );
});
```

Si vous pouvez obtenir cet attribut nativement avec un `this` :

```js
$('a').on('click', function() {
  console.log( this.id );
});
```

Et c'est plus rapide.

*> [Resultats avec JSPerf](http://jsperf.com/browser-diet-this-attr-id-vs-this-id) / [References](https://github.com/zenorocha/browser-diet/wiki/References#dont-use-jquery)*