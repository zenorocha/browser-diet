---
order: 9
title: Não use jQuery sempre...
---

Às vezes JavaScript puro pode ser mais fácil e mais performático que jQuery.

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="http://browserdiet.com/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

Considere o seguinte HTML:

```html
<div id="text">Vamos mudar esse conteúdo.</div>
```

Ao invés de fazer isso:

```js
$('#text').html('O conteúdo mudou').css({
  backgroundColor: 'red',
    color: 'yellow'
  });
```

Usamos JavaScript puro:

```js
var text = document.getElementById('text');
text.innerHTML = 'O conteúdo mudou';
text.style.backgroundColor = 'red';
text.style.color = 'yellow';
```

É simples e **muito** mais rápido.

*> [Resultado no JSPerf](http://jsperf.com/jquery-vs-javascript-performance-text) / [Referências](https://github.com/zenorocha/browser-diet/wiki/References#dont-use-jquery)*