---
order: 9
title: Nepoužívejte JQuery za každou cenu...
---

Občas může být čistý JavaScript jednodušší a výkonější než jQuery.

<div class="img-right">
  <img id="geek-6" class="icos-geek" src="http://browserdiet.com/en/assets/img/6.png" alt="Geek #6" width="156" height="275" />
</div>

Zvažte následující HTML:

```html
<div id="text">Let's change this content</div>
```

Místo, abyste napsali:

```js
$('#text').html('The content is changed').css({
  backgroundColor: 'red',
  color: 'yellow'
});
```

použijte prostý JavaScript:

```js
var text = document.getElementById('text');
text.innerHTML = 'The text is changed';
text.style.backgroundColor = 'red';
text.style.color = 'yellow';
```

Je to jednoduché a **mnohem** rychlejší.

*> [Výsledky na JSPerf](http://jsperf.com/jquery-vs-javascript-performance-text) / [Reference](https://github.com/zenorocha/browser-diet/wiki/References#dont-use-jquery)*
