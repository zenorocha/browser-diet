---
title: Encadeamento de métodos
slug: jquery-encadeamento
order: 1
---

Encadeamento significa você pode executar um método de jQuery logo após a outro, sem a necessidade de especificar novamente o seletor. Quase todos os métodos do jQuery possibilitam fazer encadeamento, pois grande parte deles retornam um objeto jQuery.

Como fazer um encadeamento?
```js
  $("#object").addClass("foo").css("border-color", "#ccc").width(200);
```

Sem encadeamento
```js
	$("#object").addClass("foo");
	$("#object").css("border-color","#f0f");
	$("#object").width(200);
```

Porém em testes com uso de cache sem encadeamento, mostram que chamadas separadas tem melhor velocidade de execução que usando encadeamento.

Sem encadeamento com cache
```js
	var obj;

	obj.addClass("foo");
	obj.css("border-color","#f0f");
	obj.width(200);
```

Levando em consideração código mais enxuto x performance, pode se tornar interessante o uso de encadeamento com cache:

Sem encadeamento com cache
```js
	var obj;

	obj.addClass("foo").css("border-color","#f0f").width(200);
```
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
```js
[http://jsperf.com/jquery-chaining/17](http://jsperf.com/jquery-chaining/17)
```