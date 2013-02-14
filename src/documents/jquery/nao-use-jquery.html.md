---
title: Não use jQuery...
slug: nao-use-jquery
order: 30
---

...a não ser que seja estritamente necessário :)

JavaScript puro sempre será mais rápido que ele e às vezes pode ser até mais simples que jQuery.

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