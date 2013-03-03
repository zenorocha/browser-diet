---
order: 3
title: for vs. each vs. for in vs. while reverso
---

O uso das funções nativas do JavaScript, quase sempre, trazem execuções mais rápidas que as
respectivas em jQuery. Sendo assim, ao invés de utilizar o método `jQuery.each`, use o `for` do próprio JavaScript.

Mas atenção, apesar do `for in` ser nativo, sua performance muitas vezes é pior que o `jQuery.each`.

Já o bom e velho `for` nos trás uma melhor forma de deixar nossas iterações mais rápidas, e você ainda pode aplicar um cache para o tamanho total do array e conseguirá aumentar o número de operações por segundo.

```js
for ( var i = 0, len = a.length; i < len; i++ ) {
	e = a[i];
}
```

O uso de `while` reverso e `for` reverso é bem discutido na comunidade, e muitas vezes citado como a forma
mais rápida de se fazer uma iteração com JavaScript, porém é bastante criticado devido ao fato de deixar o código com uma leitura mais difícil, e também nem sempre essas formas são mais perfomáticas, como se pode perceber na [referências](https://github.com/zenorocha/como-perder-peso/wiki/References).