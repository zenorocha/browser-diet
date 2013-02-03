---
title: evite a manipulação desnecessária da DOM
slug: jquery-evite-manipular-o-dom
order: 3
---

Manipulação da DOM é uma das tarefas que o javascript realiza de forma mais lenta, sendo assim faça um uso limitado dessa manipulação. Operações com prepend(), append(), after() são muio custosas.

Evitando a manipulação da DOM
```js

var lista = '';  

for ( var i=0; i<100; i++ ) {  
    lista += '<li>' + i + '</li>';  
}  

$('#lista').html (list);  

```