---
order: 17
title: Guarde o tamanho do Array
---

O loop é sem dúvida é uma das partes mais importantes com relação a performance no JavaScript. Busque otimizar a lógica dentro de um loop para que cada iteração seja feita de forma eficiente.

Um modo para fazer isso é armazenando o tamanho do array que será percorrido, assim ele não precisa ser recalculado toda vez que o loop for iterado.

```js
var arr = new Array(1000),
    len, i;

for (i = 0; i < arr.length; i++) {
  // Ruim - o tamanho precisa ser calculado 1000 vezes
}

for (i = 0, len = arr.length; i < len; i++) {
  // Bom - o tamanho só é calculado 1 vez e depois armazenado
}
```

*[> Resultado no JSPerf](http://jsperf.com/browser-diet-cache-array-length/10/)*

**> Observação:** *Embora engines de browsers modernos otimizam automaticamente esse processo, continua sendo uma boa prática atender o legado de browsers que ainda perduram.*

Em iterações sobre coleções HTML como uma lista de Nodes (*NodeList*) geradas por exemplo através de `document.getElementsByTagName('a')`, isto é particularmente crítico e essencial. Essas coleções são consideradas "vivas", ou seja, são automaticamente atualizadas quando há alterações no elemento à qual pertencem.

```js
var links = document.getElementsByTagName('a'),
    len, i;

for (i = 0; i < links.length; i++) {
  // Ruim - a cada iteração a lista de links será recalculada para verificar se houve mudança
}

for (i = 0, len = links.length; i < len; i++) {
  // Bom - o tamanho da lista é primeiramente obtido e armazenado, depois comparado a cada iteração
}

// Péssimo: exemplo de loop infinito
for (i = 0; i < links.length; i++) {
  document.body.appendChild(document.createElement('a'));
  // a cada iteração a lista de links aumenta, nunca satisfazendo a condição de término do loop
  // isso não aconteceria se o tamanho da lista fosse armazenado e usado como condição
}
```

*> [Referências](https://github.com/zenorocha/browser-diet/wiki/References#cache-array-lengths)*