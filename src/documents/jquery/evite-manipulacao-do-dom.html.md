---
order: 1
title: Evite a manipulação desnecessária do DOM
---

Manipulação do DOM é uma das tarefas que o JavaScript realiza de forma mais lenta, sendo assim faça uso disso apenas quando necessário. Operações como `prepend()`, `append()`, `after()` também são muito custosas.

Portanto, ao invés de fazer isso:

```js
for ( var i = 0; i < 100; i++ ) {
    $('#list').append('<li>' + i + '</li>');
}
```

Faça isso:

```js
var list = '';

for ( var i = 0; i < 100; i++ ) {
    list += '<li>' + i + '</li>';
}

$('#list').html(list);
```

[> Resultado no JSPerf](http://jsperf.com/como-perder-peso-manipula-o-do-dom)