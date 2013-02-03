---
title: for vs. each vs. for in vs. while reverso
slug: for-vs-each-vs-for-in-vs-while-reverso
order: 3
---

Normalmente o uso das funções nativas do javascript, quase sempre, trazem execuções mais rápidas que as 
respectivas em jQuery. Sendo assim ao invés de utilizar o método jquery.each, 
use o for do próprio javascript.

Uso do $.each em jQuery
```js
	$.each(a, function() {
		e = this;
	});
```

Uso do for sem cache
```js
	for (var i = 0; i < a.length; i++) {
		e = a[i];
	}
```

Mas atenção, apesar do for in ser nativo do Javascript, sua performance muitas vezes é pior que o uso do each.jQuery. Como apresentado no item [1], das referências.

Uso do for in (Pior opção)
```js
	for (var i in a) {
		e = a[i];
	}
```

Sendo assim, o bom e velho for nos traz uma melhor forma de deixar nossas iterações mais rápidas, e você ainda pode aplicar um cache para o tamanho total do array e conseguirá aumentar o numero de operações por segundo.

Uso do for com cache (Melhor opção, considerando performance e legibilidade)
```js
	for (var i = 0, len = a.length; i < len; i++) {
		e = a[i];
	}
```

O uso de while reverso e for reverso é bem discutido na comunidade, e muitas vezes citado como a forma
mais rápida de se fazer uma iteração com javascript, porém é bastante criticado devido ao fato de deixar o código com uma leitura mais difícil, e também nem sempre essas formas são mais perfomáticas, como se pode perceber na referência [1].

[1] http://jsperf.com/jquery-each-vs-for-loop/194
[2] http://jsfiddle.net/martinaglv/NcRsV/