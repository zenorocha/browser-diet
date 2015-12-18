---
order: 7
title: Nie zawsze korzystaj z jQuery...
---

Czasami czysty JavaScript może być jeszcze prostszy niż jQuery.

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="https://browserdiet.com/en/assets/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

Rozważmy następujący kod HTML:

```html
<div id="text">Zmieńmy treść tego tekstu</div>
```

Zamiast robić to w taki sposób:

```js
$('#text').html('Treść zmieniła się').css({
  backgroundColor: 'red',
  color: 'yellow'
});
```

Użyj samego JavaScriptu:

```js
var text = document.getElementById('text');
text.innerHTML = 'Treść zmieniła się';
text.style.backgroundColor = 'red';
text.style.color = 'yellow';
```

Tak jest prościej i **o wiele** szybciej.

*> [Wyniki w JSPerf](http://jsperf.com/jquery-vs-javascript-performance-text) / [Referencje](https://github.com/zenorocha/browser-diet/wiki/References#dont-use-jquery)*
