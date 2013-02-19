---
order: 3
title: Não use jQuery...
---

...a não ser que seja estritamente necessário :)

Às vezes JavaScript puro pode ser até mais simples que jQuery.

Pra que fazer isso?

```js
$('a').on('click', function() {
  console.log( $(this).attr('id') );
});
```

Se você pode fazer isso?

```js
$('a').on('click', function() {
  console.log( this.id );
});
```

E ainda ser mais rápido.

[> Resultado no JSPerf](http://jsperf.com/como-perder-peso-this-attr-id-vs-this-id)