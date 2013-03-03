---
order: 1
title: Minimize Repaints e Reflows
---

Repaints e reflows são causados quando existe alguma re-renderização no DOM quando determinada propriedade ou elemento é alterado.

Repaints são disparados quando a aparência de um elemento é alterada sem alterar seu layout. Nicole Sullivan descreve isso como uma mudança de estilo como o ato de alterar um `background-color`.

Reflows são os mais custosos, causados quando as mudanças alterando o layout da página, como por exemplo alterar o width de um elemento.

Não há dúvida que ambos reflows e repaints devem ser evitados, portanto ao invés de fazer isso:

```js
var myList = document.getElementById("myList");

for (var i = 0; i < 100; i++) {
  myList.innerHTML += "<span>" + i + "</span>";
}
```

Faça isso:

```js
var myList = "";

for (var i = 0; i < 100; i++) {
  myList += "<span>" + i + "</span>";
}

document.getElementById("myList").innerHTML = myList;
```

Assim você evita manipular o DOM a cada iteração do loop, realizando isso apenas uma vez.

[> Resultado no JSPerf](http://jsperf.com/como-perder-peso-dom-manipulation)