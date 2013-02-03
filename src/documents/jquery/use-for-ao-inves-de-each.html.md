---
title: for vs each vs for in
slug: for-vs-each-vs-for-in
order: 3
---

Normalmente o uso das funções nativas do javascript, quase sempre, trazem execuções mais rápidas que as 
respectivas em jQuery. Sendo assim ao inves de utilizar o método jquery.each, 
use o for do próprio javascript.

Uso do $.each em jQuery
```js
	$.each(a, function() {
		e = this;
	});
```

Uso do for (Melhor opção)
```js
	for (var i = 0, len = a.length; i < len; i++) {
		e = a[i];
	}
```

Apesar do for in ser nativo do Javascript, sua performance é muitas vezes pior que o uso do each.jQuery. Como apresentado no item [1], das referências.

Uso do for in (Pior opção)
```js
	for (var i in a) {
		e = a[i];
	}
```

[1] http://jsperf.com/jquery-each-vs-for-loop/194