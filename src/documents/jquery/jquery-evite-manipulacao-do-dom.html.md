---
title: evite a manipulação desnecessária da DOM
slug: jquery-evite-manipular-o-dom
order: 3
---

Manipulação da DOM é uma das tarefas que o JavaScript realiza de forma mais lenta, sendo assim faça um uso limitado dessa manipulação. Operações com `prepend()`, `append()`, `after()` são muio custosas.

Ao invés de fazer isso:

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