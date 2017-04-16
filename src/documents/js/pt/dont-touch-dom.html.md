---
order: 13
title: Evite manipulações desnecessárias no DOM
---

Toda vez que você toca no DOM sem realmente precisar, um panda morre.

Sério, navegar por elementos do DOM é custoso. Apesar das engines JavaScript estarem cada vez mais poderosas e rápidas, prefira sempre otimizar ao máximo as consultas na árvore do DOM.

Uma das alternativas mais simples de serem adotadas é: quando um elemento precisar ser acessado mais de uma vez, guarde-o numa váriavel, e assim você não vai fazer mais do que uma consulta no DOM.

```js
// muito ruim!
for (var i = 0; i < 100; i++) {
  document.getElementById("myList").innerHTML += "<span>" + i + "</span>";
}
```

```js
// bem melhor :)
var myList = "";

for (var i = 0; i < 100; i++) {
  myList += "<span>" + i + "</span>";
}

document.getElementById("myList").innerHTML = myList;
```

```js
// bem bem melhor :)
var myListHTML = document.getElementById("myList").innerHTML;

for (var i = 0; i < 100; i++) {
  myListHTML += "<span>" + i + "</span>";
}
```

*> [Resultados no JSPerf](http://jsperf.com/browser-diet-dom-manipulation/11)*

```js
Porém, precisamos considerar o item anterior, onde é muito importante minimizar repaints e reflows, portanto se você estiver trabalhando com uma carga muito grande de elementos que precisam ser atualizados, talvez seja melhor você considerar usar `document.documentCreateFragment`, onde os elementos são armazenados em um array, e incluídos de uma vez só no DOM.

var myListHTML = document.getElementById("myList"), newHTML, fragments = document.createDocumentFragment();

for (var i = 0; i < 100; i++) {
  newHTML = document.createElement('span');
  newHTML.innerText = i;

  fragments.appendChild(newHTML);
}

myListHTML.appendChild(fragments);
```

*> [Referências](https://github.com/zenorocha/browser-diet/wiki/References#avoid-unnecessary-dom-manipulations)*