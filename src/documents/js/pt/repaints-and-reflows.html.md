---
order: 15
title: Minimize Repaints e Reflows
---

Repaints e reflows são causados quando existe alguma re-renderização no DOM quando determinada propriedade ou elemento é alterado.

Repaints são disparados quando a aparência de um elemento é alterada sem alterar seu layout. Nicole Sullivan descreve isso como uma mudança de estilo como o ato de alterar um `background-color`.

Reflows são os mais custosos, causados quando as mudanças alterando o layout da página, como por exemplo alterar o width de um elemento.

Não há dúvida que ambos reflows e repaints devem ser evitados, portanto ao invés de fazer isso:

<div class="img-right">
  <img id="geek-55" class="icos-geek" src="http://browserdiet.com/img/55.png" alt="Geek #55" width="163" height="275" />
</div>

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = div.offsetWidth + 'px';
}
```

Faça isso:

```js
var div = document.getElementById("to-measure"),
    lis = document.getElementsByTagName('li'),
    widthToSet = div.offsetWidth,
    i, len;

for (i = 0, len = lis.length; i < len; i++) {
  lis[i].style.width = widthToSet + 'px';
}
```

Quando você define o `style.width`, o navegador precisa recalcular o layout. Normalmente, uma mudança de estilo em muitos elementos realiza apenas um reflow, já que o navegador não precisa pensar sobre ele até que necessite atualizar a tela. Entretanto, no primeiro exemplo, nós pedimos por `offsetWidth`, que é a largura de layout do elemento, então o navegador precisa recalcular o layout.

Se você precisar ler informações do layout na página, faça de uma vez só antes de definir qualquer coisa que altere o layout, como no segundo exemplo.

*[> Demo](http://jsbin.com/aqavin/2/quiet)*