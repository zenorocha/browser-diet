---
title: Seletores
slug: jquery-seletores
order: 10
---

De fato seletores é um dos assuntos mais importantes na utilização do jQuery. Há varias formas de se fazer a seleção de algum elemento na DOM, porém isso não quer dizer que elas tem a mesma performance.

ID e Elementos são mais rápidos, pois são baseados em operações nativas da DOM
```js
  $("#object").addClass("foo").css("border-color", "#ccc").width(200);
```

<strong>context</strong>
```js
var $test = $('.test', list);
```
Fazendo a utilização de contexto, o jQuery irá fazer a tradução desta linha de código para list.find(".test"), e isso causará uma pequena redução no tempo de execução em relação ao uso da forma mais rápida, fazendo uso do método find().

<strong>selector</strong>
```js
var $test = $('#list .test');
```
Essa peculiaridade do Sizzle interpretar o seletor da direita para esquerda, fará com o que essa forma de seleção busque todos os elementos que tem a classe `.test` e depois verifique se o mesmo tem como ancestral  `#list`, está opção é cerca de 77% mais lenta que a mais rápida. [1]


<strong>context and find</strong>
```js
var $test = $(list).find('.test');
```

<strong>created context</strong>
```js
var $test = $('.test', $('#list'));
```
O jQuery irá fazer a tradução desta linha de código para list.find(".test"), é importante notar que o contexto é um objeto jQuery e isso irá torna-la cerca de 23% mais lento que a opção mais rápida.

<strong>selector and find</strong>
```js
var $test = $('#list').find('.test');
```

<strong>parent/child selector</strong>
```js
var $test = $('#list > .test');
```
Essa peculiaridade do Sizzle interpretar o seletor da direita para esquerda, fará com o que essa forma de seleção busque todos os elementos que tem a classe `.test` e depois verifique se o mesmo tem como ancestral <strong>direto</strong> `#list`, está opção é cerca de 70% mais lenta que a mais rápida. [1]

<strong>filhos imediatos</strong>
```js
$test = $(list).children('.test');
```
Internamente fazem o uso de $.siblings e do nextSibling do Javascript para encontrar os outros nós na mesma árvore, isso torna essa opção 50% mais lenta que a mais rápida. [2]


[1] http://addyosmani.com/jqprovenperformance/

[2] http://jsperf.com/jquery-selectors-context/2