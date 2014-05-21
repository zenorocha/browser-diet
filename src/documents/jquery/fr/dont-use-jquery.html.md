---
order: 7
title: N'utilisez pas toujours jQuery
---

Parfois du pur JavaScript peut-être plus simple que jQuery.

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="http://browserdiet.com/en/assets/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

Considérez le html suivant :

```html
<div id="text">Changeons ce texte</div>
```

Plutôt que de faire ceci :

```js
$('#text').html('Le texte a changé').css({
  backgroundColor: 'red',
  color: 'yellow'
});
```

Utilisez du pur JavaScript :

```js
var text = document.getElementById('text');
text.innerHTML = 'Le texte a changé';
text.style.backgroundColor = 'red';
text.style.color = 'yellow';
```

C'est simple et BEAUCOUP plus rapide. Jetez donc un oeil aux résultats avec JSPerf.

*> [Resultats avec JSPerf](http://jsperf.com/jquery-vs-javascript-performance-text)*
