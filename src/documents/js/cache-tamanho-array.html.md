---
order: 4
title: Guarde o tamanho do Array
---

O loop é sem dúvida é uma das partes mais importantes com relação a performance no JavaScript. Economize milissegundos dentro de um loop e pontencialmente poderá ganhar segundos lá na frente.

Um modo para fazer isso é armazenando o tamanho do array que será percorrido, assim ele não precisa ser recalculado toda hora que o loop for iterado.

```
var myList = new Array(1000);

for ( var i = 0; i < myList.length; i++ ) {
  // Ruim - o tamanho precisa ser calculado 1000 vezes
}

for ( var i = 0, len = myList.length; i < len; i++ ) {
  // Bom - o tamanho só é calculado 1 vez e depois armazenado
}
```

[> Resultado no JSPerf](http://jsperf.com/como-perder-peso-cache-array-length)
