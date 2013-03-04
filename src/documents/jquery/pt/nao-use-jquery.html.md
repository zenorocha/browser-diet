---
order: 5
title: Não use jQuery...
---

...a não ser que seja estritamente necessário :)

Às vezes JavaScript puro pode ser até mais simples que jQuery.

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

[> Resultado no JSPerf](http://jsperf.com/como-perder-peso-this-attr-id-vs-this-id)