---
order: 3
title: Abuse do encadeamento de métodos
---

Encadeamento significa você pode executar um método de jQuery logo após a outro, sem a necessidade de especificar novamente o seletor. Quase todos os métodos do jQuery possibilitam fazer encadeamento, pois grande parte deles retornam um objeto jQuery.

```js
$("#object").addClass("foo").css("border-color", "#ccc").width(200);
```

Testes mostram que o não encadamento dos métodos é mais lento.

```js
$("#object").addClass("foo");
$("#object").css("border-color","#f0f");
$("#object").width(200);
```

[> Resultado no JSPerf](http://jsperf.com/como-perder-peso-encapsulamento)