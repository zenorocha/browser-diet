---
order: 8
title: Use for ao invés de each
---

O uso das funções nativas do JavaScript, quase sempre, trazem execuções mais rápidas que as respectivas em jQuery. Sendo assim, ao invés de utilizar o método `jQuery.each`, use o `for` do próprio JavaScript.

Mas atenção, apesar do `for in` ser nativo, sua performance muitas vezes é pior que o `jQuery.each`.

Já o bom e velho `for` nos traz uma melhor forma de deixar nossas iterações mais rápidas, e você ainda pode aplicar um cache para o tamanho total do array e conseguirá aumentar o número de operações por segundo.

```js
for ( var i = 0, len = a.length; i < len; i++ ) {
	e = a[i];
}
```

O uso de `while` reverso e `for` reverso é bem discutido na comunidade, e muitas vezes citado como a forma
mais rápida de se fazer uma iteração com JavaScript, porém é bastante criticado devido ao fato de deixar o código com uma leitura mais difícil.

```js
// while reverso
while ( i-- ) {
  // ...
}

// for reverso
for ( var i = array.length; i--; ) {
  // ...
}
```

*> [Resultado no JSPerf](http://jsperf.com/browser-diet-jquery-each-vs-for-loop) / [Referências](https://github.com/zenorocha/browser-diet/wiki/References#use-for-instead-of-each)*
