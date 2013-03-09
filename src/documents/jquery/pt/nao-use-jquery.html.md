---
order: 8
title: Não use jQuery...
---

...a não ser que seja estritamente necessário :)

Às vezes JavaScript puro pode ser até mais simples que jQuery.

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="http://browserdiet.com/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

Pra que usar o método `attr()` para buscar o ID?

```js
$('a').on('click', function() {
  console.log( $(this).attr('id') );
});
```

Se você pode buscar esse atributo nativamente através do `this`.

```js
$('a').on('click', function() {
  console.log( this.id );
});
```

E ainda ser mais rápido.

*[> Resultado no JSPerf](http://jsperf.com/browser-diet-this-attr-id-vs-this-id)*
